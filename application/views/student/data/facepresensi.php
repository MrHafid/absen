<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="base-url" content="<?= base_url(); ?>">
	<title>Absensi Wajah</title>
	<style>
		/* Reset gaya dasar */
		body {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
			font-family: Arial, sans-serif;
			background: linear-gradient(135deg, #1e3c72, #2a5298);
			color: #ffffff;
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
			text-align: center;
		}

		h1 {
			margin: 0;
			font-size: 2rem;
		}

		p {
			font-size: 1rem;
			opacity: 0.9;
		}

		.camera-container {
			position: relative;
			width: 100%;
			max-width: 800px;
			aspect-ratio: 4 / 3;
			margin-top: 20px;
			background-color: #000;
			border-radius: 10px;
			overflow: hidden;
			box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
		}

		#videoEl {
			width: 100%;
			height: auto;
			transform: rotateY(180deg);
			/* Membalikkan video untuk kamera depan */
		}

		canvas {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			transform: rotateY(180deg);
		}

		footer {
			margin-top: 20px;
			font-size: 0.9rem;
			opacity: 0.7;
		}

		@media (max-width: 768px) {
			h1 {
				font-size: 1.5rem;
			}

			p {
				font-size: 0.9rem;
			}

			.camera-container {
				max-width: 90%;
			}
		}
	</style>
	<script>
		// Mendapatkan data dari controller PHP
		const nis = "<?= $data['nis_siswa'] ?>";
		const idclass = "<?= $data['kode_kelas'] ?>";
		const idjurusan = "<?= $data['kode_jurusan'] ?>";
		const type = "<?= $data['type'] ?>";

		console.log('NIS:', nis); // Outputkan NIS
		console.log('Kelas:', idclass); // Outputkan Level
		console.log('Type:', type); // Outputkan Type
	</script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
	<header>
		<h1>Face Detection</h1>
		<p>Pastikan wajah Anda terlihat jelas pada kamera</p>
	</header>

	<div class="camera-container">
		<video id="videoEl" autoplay muted playsinline></video>
		<canvas id="overlay"></canvas>
	</div>

	<footer>&copy; 2024 Presensi Face detection</footer>

	<!-- Skrip pendeteksi wajah -->
	<script src="<?= base_url(); ?>assets/js/face-api/dist/face-api.js"></script>
	<script src="<?= base_url(); ?>assets/js/face-api/dist/face-main.js"></script>
</body>

</html>
