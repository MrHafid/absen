<?php

class Data extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('student/M_auth');
		$this->load->model('M_siswa');
		$this->load->model('student/M_data');
		if (!$this->session->userdata('id_siswa')) {
			redirect(base_url() . 'student/auth');
		}
		if ($this->session->userdata('level') != 'siswa') {
			echo 'Anda tidak diizinkan untuk akses halaman ini';
			exit;
		}
	}

	// dashboard admin
	public function absen()
	{
		$this->load->helper('sf_helper');
		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);

		$this->load->model('M_absensi');
		$data = [
			'title' => WEBNAME . 'Siswa Dashboard',
			'user' => $datauser,
			'webname' => WEBNAME,
			'siswa' => $this->M_siswa->dataspesifiksiswa($datauser['nis'])
		];

		$this->load->view('student/templates/header', $data);
		$this->load->view('student/data/absen');
		$this->load->view('student/templates/footer');
	}

	public function libur()
	{
		$this->load->helper('sf_helper');
		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);

		$datalibur = $this->M_data->datalibur();
		$data = [
			'title' => WEBNAME . 'Siswa Dashboard',
			'user' => $datauser,
			'webname' => WEBNAME,
			'datalibur' => $datalibur
		];

		$this->load->view('student/templates/header', $data);
		$this->load->view('student/data/libur');
		$this->load->view('student/templates/footer');
	}


	public function cetak_kartu()
	{
		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);
		// $this->load->helper('sf_helper');
		// generateQrSiswa($datauser['nis_siswa'], 'siswa/' . $datauser['nis_siswa'] . '.png');
		function encode_img_base64($img_path = false, $img_type = 'png')
		{
			if ($img_path) {
				//convert image into Binary data
				$img_data = fopen($img_path, 'rb');
				$img_size = filesize($img_path);
				$binary_image = fread($img_data, $img_size);
				fclose($img_data);

				//Build the src string to place inside your img tag
				$img_src = "data:image/" . $img_type . ";base64," . str_replace("\n", "", base64_encode($binary_image));

				return $img_src;
			}

			return false;
		}
		$path = './assets/qr/siswa/' . $datauser['nis_siswa'] . '.png';
		$img = encode_img_base64($path);
		$data = [
			'user' => $datauser,
			'webname' => WEBNAME,
			'img' => $img
		];
		$this->load->library('pdf');
		$this->pdf->setPaper('A6', 'portrait');
		$this->pdf->filename = "Kartu absen" . $data['user']['nama_siswa'];
		// $this->pdf->load_view('student/data/kartuabsen', $data);
		$this->load->view('student/data/facepresensi', $data);
	}

	public function face_presensi()
	{
		$type = $this->input->get('type');
		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);
		$datauser['type'] = $type;

		$data = [
			'data' => $datauser,
			'message' => null // Tidak ada pesan jika sukses
		];
		$this->load->view('student/data/facepresensi', $data);
	}


	// Send Absensi
	public function sending_presensi()
	{
		$inputData = json_decode(file_get_contents('php://input'), true);

		if (isset($inputData['nis'], $inputData['face_descriptor'], $inputData['idClass'], $inputData['idjurusan'])) {
			$nis = $inputData['nis'];
			$idClass = $inputData['idClass'];
			$idjurusan = $inputData['idjurusan'];
			$type = $inputData['type'];
			$lat = $inputData['lat'];
			$long = $inputData['long'];
			$faceDescriptor = $inputData['face_descriptor'];

			// Ambil face descriptor yang disimpan sebelumnya di database berdasarkan nis
			$this->load->model('M_data');
			$storedFaceDescriptor = $this->M_data->get_face_desc($nis);

			// Jika descriptor ditemukan
			if ($storedFaceDescriptor) {
				// Perbandingan descriptor (misalnya menggunakan cosine similarity atau Euclidean distance)
				$isMatch = $this->compareFaceDescriptors(json_decode($storedFaceDescriptor), $faceDescriptor);

				if ($isMatch) {
					// Absensi berhasil
					// Simpan data absensi ke database
					$res = $this->M_data->send_presensi($nis, $idClass, $idjurusan, $type, $lat, $long);
					if ($res['err_code'] == 0) {
						echo json_encode(['status' => 'success', 'message' => 'Absensi berhasil']);
					} else {
						echo json_encode(['status' => 'error', 'message' => $res['err_message']]);
					}
				} else {
					// Wajah tidak cocok
					echo json_encode(['status' => 'error', 'message' => 'Wajah tidak dikenali']);
				}
			} else {
				// Tidak ada face descriptor ditemukan di database
				echo json_encode(['status' => 'error', 'message' => 'Data wajah tidak ditemukan di database']);
			}
		} else {
			echo json_encode(['status' => 'error', 'message' => 'Data tidak lengkap']);
		}
	}

	function compareFaceDescriptors($storedFaceDescriptor, $inputFaceDescriptor)
	{
		// Logika untuk membandingkan face descriptors
		// Contoh sederhana bisa menggunakan cosine similarity atau perbedaan Euclidean
		$distance = $this->calculateEuclideanDistance($storedFaceDescriptor, $inputFaceDescriptor);

		// Set threshold untuk menentukan kecocokan wajah
		$threshold = 0.6; // Misalnya, threshold ditetapkan 0.6

		return $distance <= $threshold;
	}

	function calculateEuclideanDistance($vector1, $vector2)
	{
		// Menghitung jarak Euclidean sederhana antara dua vektor descriptor
		$distance = 0.0;
		for ($i = 0; $i < count($vector1); $i++) {
			$distance += pow($vector1[$i] - $vector2[$i], 2);
		}
		return sqrt($distance);
	}


	// Save face
	public function save_face()
	{
		$inputData  =  json_decode(file_get_contents('php://input'), true);

		// Cek apakah semua data sudah ada
		if (isset($inputData['face_descriptor']) && !empty($inputData['face_descriptor'])) {
			$face_descriptor = $inputData['face_descriptor'];
			$nis = $inputData['nis'];
			// Kirim data ke model untuk disimpan di database
			$this->load->model('M_data');
			$d = array('faceid' => json_encode($face_descriptor));
			$is_success = $this->M_data->save_face_desc($nis, $d);

			if ($is_success) {
				echo json_encode(['status' => 'success', 'message' => 'Wajah berhasil disimpan']);
			} else {
				echo json_encode(['status' => 'error', 'message' => 'Gagal menyimpan']);
			}
		} else {
			echo json_encode(['status' => 'error', 'message' => 'Data tidak lengkap']);
		}
	}

	// profile / pengaturan akun
	public function profile()
	{
		$this->load->helper('sf_helper');
		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);
		$dataakun = $this->M_data->dataakunsiswa($this->session->userdata('nis'))[0];

		$data = [
			'title' => WEBNAME . 'Siswa Dashboard',
			'user' => $datauser,
			'webname' => WEBNAME,
			'dataakun' => $dataakun
		];

		$this->load->view('student/templates/header', $data);
		$this->load->view('student/data/profile');
		$this->load->view('student/templates/footer');
	}
}
