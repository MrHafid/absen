// Get elemen video untuk menampilkan kamera
const videoEl = document.getElementById('videoEl');
const base_url = document.querySelector('meta[name="base-url"]').getAttribute('content');

// Ex Static sample
const sourceLat = -7.308477772999669; // Latitude Pusat -7.2493677,112.7265819 (Example LatLong 100m +)
const sourceLong = 112.77937301073484; // Longitude Pusat

function isWithinRadius(lat1, lon1, lat2, lon2, radiusInMeters = 100) {
	const distanceInKm = getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2);
	const distanceInMeters = distanceInKm * 1000; // Mengonversi km ke meter
	return distanceInMeters <= radiusInMeters; // Cek jika jarak dalam radius yang diizinkan
}

// Fungsi untuk menghitung jarak antara dua titik menggunakan Haversine Formula
function getDistanceFromLatLonInKm(lat1, lon1, lat2, lon2) {
	const R = 6371; // Radius bumi dalam kilometer
	const dLat = deg2rad(lat2 - lat1);
	const dLon = deg2rad(lon2 - lon1);
	const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
		Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) *
		Math.sin(dLon / 2) * Math.sin(dLon / 2);
	const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
	const distance = R * c; // Menghasilkan jarak dalam kilometer
	return distance;
}

// Fungsi untuk mengonversi derajat ke radian
function deg2rad(deg) {
	return deg * (Math.PI / 180);
}


// oTHER
function getLocation(face) {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(
			(position) => {
				const latitude = position.coords.latitude;
				const longitude = position.coords.longitude;

				console.log(`Latitude: ${latitude}`);
				console.log(`Longitude: ${longitude}`);

				// Kirim data ke server untuk disimpan
				// sendLocationToServer(latitude, longitude);

				markAttendance(face, latitude, longitude);
			},
			(error) => {
				console.error("Error mendapatkan lokasi: ", error);
				Swal.fire({
					title: 'Error',
					text: 'Tidak dapat mengambil lokasi. Pastikan izin lokasi diberikan.',
					icon: 'error',
					confirmButtonText: 'Tutup'
				}).then(() => {
					stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
					clearInterval(detectionInterval);  // Hentikan interval deteksi
				});
			},
			{
				enableHighAccuracy: true,
				timeout: 10000, // batas waktu dalam ms
				maximumAge: 0,
			}
		);
	} else {
		Swal.fire({
			title: 'Error',
			text: 'Geolocation tidak didukung di browser ini.',
			icon: 'error',
			confirmButtonText: 'Tutup'
		}).then(() => {
			stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
			clearInterval(detectionInterval);  // Hentikan interval deteksi
		});
	}
}


// Inisiasi function dari faceapi load model
Promise.all([
	faceapi.nets.tinyFaceDetector.loadFromUri(base_url + 'assets/js/face-api/dist/models'),
	faceapi.nets.faceLandmark68Net.loadFromUri(base_url + 'assets/js/face-api/dist/models'),
	faceapi.nets.faceRecognitionNet.loadFromUri(base_url + 'assets/js/face-api/dist/models'),
	faceapi.nets.faceExpressionNet.loadFromUri(base_url + 'assets/js/face-api/dist/models')
])
	.then(startCamera);

// Membuat function untuk menampilkan input webcam di elemen video
async function startCamera() {
	navigator.mediaDevices.getUserMedia({ video: true })
		.then(function (stream) {
			videoEl.srcObject = stream;
		})
		.catch(function (err) {
			console.log('Ada yang error', err);
		});
}
let detectionCooldown = false;  // Flag untuk menghindari mengirim absensi berulang-ulang
let stopDetection = false;  // Flag untuk menghentikan deteksi setelah absensi selesai
let detectionInterval; // Menyimpan interval untuk dapat di-clear nanti
let lastDetectedFace = null; // Variabel untuk menyimpan deteksi terakhir yang berhasil

async function startFunction() {
	console.log("Deteksi dimulai...");

	const sizeEl = { width: videoEl.videoWidth, height: videoEl.videoHeight };

	if (!sizeEl.width || !sizeEl.height) {
		console.error("Dimensi video tidak valid.");
		return;
	}

	// Create canvas untuk detection shape-nya
	const canvas = faceapi.createCanvasFromMedia(videoEl);
	document.body.append(canvas);

	faceapi.matchDimensions(canvas, sizeEl);

	// Interval untuk deteksi wajah setiap 3 detik
	detectionInterval = setInterval(async function () {
		console.log("Interval dijalankan, deteksi wajah...");

		if (stopDetection) {
			console.log("Deteksi dihentikan.");
			// Berhenti jika deteksi sudah dihentikan
			clearInterval(detectionInterval);
			return;
		}

		const detections = await faceapi.detectAllFaces(
			videoEl,
			new faceapi.TinyFaceDetectorOptions()
		)
			.withFaceLandmarks()
			.withFaceExpressions()
			.withFaceDescriptors(); // Mengambil face descriptor juga

		// Clear canvas untuk menggambar ulang setiap frame
		canvas?.getContext('2d').clearRect(0, 0, canvas.width, canvas.height);

		if (detections && detections.length > 0) {
			const face = detections[0]; // Ambil wajah pertama yang terdeteksi
			console.log("Wajah terdeteksi:", face);

			// Gambar bounding box wajah
			faceapi.draw.drawDetections(canvas, detections);

			// Jika wajah pertama terdeteksi, langsung stop deteksi dan kirim data
			if (!lastDetectedFace || face.detection.box.width !== lastDetectedFace.detection.box.width || face.detection.box.height !== lastDetectedFace.detection.box.height) {
				console.log("Wajah baru atau ukuran wajah berubah");

				lastDetectedFace = face;
				const faceDescriptor = face.descriptor;

				// Kirim data absensi
				if (!detectionCooldown) {
					detectionCooldown = true;

					if (type != 'verif') {
						getLocation(faceDescriptor);
					} else {
						saveFaceEmbedding(faceDescriptor);
					}

					// Mengatur cooldown agar tidak mengirim lebih dari sekali dalam 1 detik
					setTimeout(() => {
						detectionCooldown = false;
					}, 1000);

					// Hentikan deteksi setelah wajah pertama
					stopDetection = true;
					clearInterval(detectionInterval); // Hentikan interval deteksi wajah
				}
			}
		} else {
			console.log("Tidak ada wajah terdeteksi.");
		}

	}, 100); // Deteksi wajah setiap 3000ms (3 detik)
}

// Fungsi untuk menandai absensi ke server
async function markAttendance(face, lat, long) {

	console.log("Mengirim absensi ke server...");

	if (isWithinRadius(sourceLat, sourceLong, lat, long, 100)) {
		console.log("Lokasi Absensi Valid");
		// Mengirim data ke server untuk absensi
		try {
			const response = await fetch(base_url + 'student/data/sending_presensi', {
				method: 'POST',
				headers: {
					'Content-Type': 'application/json',
				},
				body:
					JSON.stringify({
						nis: nis,
						idClass: idclass,
						idjurusan: idjurusan,
						type: type,
						face_descriptor: face,
						lat: lat,
						long: long,
					})
			});

			const data = await response.json();
			console.log("Response server:", data);

			if (data.status === 'success') {
				Swal.fire({
					title: 'Absensi Berhasil',
					text: data.message,
					icon: 'success',
					confirmButtonText: 'Kembali'
				}).then(() => {
					stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
					clearInterval(detectionInterval);  // Hentikan interval deteksi
					window.history.back();  // Kembali ke halaman sebelumnya
				});
			} else {
				Swal.fire({
					title: 'Gagal',
					text: data.message,
					icon: 'error',
					confirmButtonText: 'Ulangi'
				}).then(() => {
					stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
					clearInterval(detectionInterval);  // Hentikan interval deteksi

					location.reload();
				});
			}

		} catch (err) {
			console.error("Terjadi kesalahan saat mengirim absensi:", err);
			Swal.fire({
				title: 'Error',
				text: 'Terjadi kesalahan pada server.',
				icon: 'error',
				confirmButtonText: 'Ulangi'
			}).then(() => {
				stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
				clearInterval(detectionInterval);  // Hentikan interval deteksi

				location.reload();
			});
		}
	} else {
		console.log("Lokasi Absensi Tidak Dalam Radius 100M");
		Swal.fire({
			title: 'Gagal',
			text: 'Lokasi Absensi Tidak Dalam Radius 100 meter',
			icon: 'error',
			confirmButtonText: 'Ulangi'
		}).then(() => {
			stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
			clearInterval(detectionInterval);  // Hentikan interval deteksi

			location.reload();
		});
	}


}

async function saveFaceEmbedding(faceDescriptor) {
	// console.log(JSON.stringify(faceDescriptor));
	// Kirim embedding wajah ke server untuk disimpan
	try {
		const response = await fetch(base_url + 'student/data/save_face', {
			method: 'POST',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify({ nis: nis, face_descriptor: faceDescriptor })
		});
		console.log("Status code: ", response.status);

		const data = await response.json();
		console.log("Response server:", data);

		if (data.status === 'success') {
			Swal.fire({
				title: 'Absensi Berhasil',
				text: data.message,
				icon: 'success',
				confirmButtonText: 'Kembali'
			}).then(() => {
				stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
				clearInterval(detectionInterval);  // Hentikan interval deteksi
				window.history.back();  // Kembali ke halaman sebelumnya
			});
		} else {
			Swal.fire({
				title: 'Gagal',
				text: data.message,
				icon: 'error',
				confirmButtonText: 'Tutup'
			}).then(() => {
				stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
				clearInterval(detectionInterval);  // Hentikan interval deteksi
			});
		}

	} catch (err) {
		console.error("Terjadi kesalahan saat mengirim absensi:", err);
		Swal.fire({
			title: 'Error',
			text: 'Terjadi kesalahan pada server.',
			icon: 'error',
			confirmButtonText: 'Tutup'
		}).then(() => {
			stopDetection = true;  // Set flag untuk menghentikan deteksi wajah
			clearInterval(detectionInterval);  // Hentikan interval deteksi
		});
	}
}

// Listen event saat output webcam sudah mulai muncul di browser
videoEl.addEventListener('playing', startFunction);
