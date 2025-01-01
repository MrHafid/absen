<?php

class Studentpoints extends CI_Controller
{
	private $bulan = [
		'01' => 'JANUARI',
		'02' => 'FEBRUARI',
		'03' => 'MARET',
		'04' => 'APRIL',
		'05' => 'MEI',
		'06' => 'JUNI',
		'07' => 'JULI',
		'08' => 'AGUSTUS',
		'09' => 'SEPTEMBER',
		'10' => 'OKTOBER',
		'11' => 'NOVEMBER',
		'12' => 'DESEMBER',
	];

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_kelas');
		$this->load->model('M_jurusan');
		$this->load->model('M_siswa');
		$this->load->model('M_bantuan');
		$this->load->library('form_validation');
		if (!$this->session->userdata('id')) {
			redirect(base_url() . 'auth');
		}
	}
	public function index()
	{
		$datauser = $this->M_user->getUserById($this->session->userdata('id'))[0];
		$url = $this->uri->segment(1);
		verifikasiuser($datauser['role_id'], $url);


		$data = [
			'title' => WEBNAME . 'Penilaian Siswa',
			'webname' => WEBNAME,
			'kelas' => $this->M_kelas->tampilkelas(),
			'user' =>  $this->M_user->getUserById($this->session->userdata('id'))[0]
		];
		$this->load->view('templates/header', $data);
		$this->load->view('siswa/studentpoint');
		$this->load->view('templates/footer');
	}

	public function search_siswa_kelas()
	{
		$codeKelas = $this->input->post('kelas');

		if (empty($codeKelas)) {
			$dataSiswa = $this->M_siswa->getAllSiswaWithPoints();
			if ($dataSiswa) {
				// Kirim data siswa dalam format JSON
				echo json_encode([
					'status' => 'success',
					'data' => $dataSiswa
				]);
			} else {
				// Jika tidak ada hasil
				echo json_encode([
					'status' => 'error',
					'message' => 'Tidak ada siswa yang ditemukan.'
				]);
			}
		} else {
			$dataSiswa = $this->M_siswa->getSiswaWithPoints($codeKelas);
			if ($dataSiswa) {
				// Kirim data siswa dalam format JSON
				echo json_encode([
					'status' => 'success',
					'data' => $dataSiswa
				]);
			} else {
				// Jika tidak ada hasil
				echo json_encode([
					'status' => 'error',
					'message' => 'Tidak ada siswa yang ditemukan.'
				]);
			}
		}
	}

	public function save_student_points()
	{
		$data = $this->input->post('data'); // Ambil data dari request

		if (!$data || !is_array($data)) {
			echo json_encode([
				'status' => 'error',
				'message' => 'Data tidak valid.',
			]);
			return;
		}

		$students = [];
		// Bobot Keaktifan dan Sikap
		$weights = [
			'sering_menjawab' => 0.2,
			'sering_bertanya' => 0.2,
			'membantu_guru' => 0.2,
			'terlambat' => 0.133,
			'tidur' => 0.133,
			'tidak_mendengarkan' => 0.133,
		];

		$max_value = 5;

		// Proses data siswa untuk menghitung total keaktifan dan sikap
		foreach ($data as $item) {
			if (!isset($item['student_id'])) {
				continue; // Abaikan jika student_id tidak ada
			}

			// Hitung total keaktifan dan sikap
			// Maksimum nilai untuk setiap indikator
			// Proses data siswa untuk menghitung total keaktifan dan sikap
			foreach ($data as $item) {
				if (!isset($item['student_id'])) {
					continue; // Abaikan jika student_id tidak ada
				}

				// Normalisasi nilai ke skala 0-1
				$normalized_values = [
					'sering_menjawab' => ($item['sering_menjawab'] ?? 0) / $max_value,
					'sering_bertanya' => ($item['sering_bertanya'] ?? 0) / $max_value,
					'membantu_guru' => ($item['membantu_guru'] ?? 0) / $max_value,
					'terlambat' => ($item['terlambat'] ?? 0) / $max_value,
					'tidur' => ($item['tidur'] ?? 0) / $max_value,
					'tidak_mendengarkan' => ($item['tidak_mendengarkan'] ?? 0) / $max_value,
				];

				// Hitung total keaktifan dan sikap setelah normalisasi
				$total_keaktifan =
					$normalized_values['sering_menjawab'] * $weights['sering_menjawab'] +
					$normalized_values['sering_bertanya'] * $weights['sering_bertanya'] +
					$normalized_values['membantu_guru'] * $weights['membantu_guru'];

				$total_sikap =
					$normalized_values['terlambat'] * $weights['terlambat'] +
					$normalized_values['tidur'] * $weights['tidur'] +
					$normalized_values['tidak_mendengarkan'] * $weights['tidak_mendengarkan'];

				// Hitung total points sebagai gabungan dari total keaktifan dan sikap
				$total_points = $total_keaktifan + $total_sikap;

				// Simpan total keaktifan, total sikap, dan total points (normalisasi)
				$students[] = [
					'student_id' => $item['student_id'],
					'sering_menjawab' => $normalized_values['sering_menjawab'],
					'sering_bertanya' => $normalized_values['sering_bertanya'],
					'membantu_guru' => $normalized_values['membantu_guru'],
					'terlambat' => $normalized_values['terlambat'],
					'tidur' => $normalized_values['tidur'],
					'tidak_mendengarkan' => $normalized_values['tidak_mendengarkan'],
					'total_keaktifan' => round($total_keaktifan, 3),
					'total_sikap' => round($total_sikap, 3),
					'total_points' => round($total_points, 3), // Total points gabungan
				];
			}
		}

		// Urutkan siswa berdasarkan total points (tertinggi ke terendah)
		// usort($students, function ($a, $b) {
		// 	return $b['total_points'] <=> $a['total_points'];
		// });

		// Hitung ranking berdasarkan urutan setelah di-sort
		// $ranking = 1;
		foreach ($students as &$student) {
			// Tentukan ranking berdasarkan urutan setelah di-sort
			// $student['ranking'] = $ranking++; // Ranking akan bertambah tiap iterasi

			// Periksa apakah siswa sudah ada di database
			$existing = $this->db->get_where('student_points', [
				'student_id' => $student['student_id'],
				'DATE(created)' => date('Y-m-d'),
				'created_by' => $this->session->userdata('id'),
			])->row();

			if ($existing) {
				// Jika data siswa sudah ada, lakukan update
				$this->db->where('student_id', $student['student_id']);
				$this->db->update('student_points', [
					'sering_menjawab' => $student['sering_menjawab'],
					'sering_bertanya' => $student['sering_bertanya'],
					'membantu_guru' => $student['membantu_guru'],
					'terlambat' => $student['terlambat'],
					'tidur' => $student['tidur'],
					'tidak_mendengarkan' => $student['tidak_mendengarkan'],
					'total_keaktifan' => $student['total_keaktifan'],
					'total_sikap' => $student['total_sikap'],
					'total_points' => $student['total_points'],
					'created_by' => $this->session->userdata('id'),
					// 'ranking' => $student['ranking'],
				]);
			} else {
				// Jika data siswa belum ada, lakukan insert
				$this->db->insert('student_points', [
					'student_id' => $student['student_id'],
					'sering_menjawab' => $student['sering_menjawab'],
					'sering_bertanya' => $student['sering_bertanya'],
					'membantu_guru' => $student['membantu_guru'],
					'terlambat' => $student['terlambat'],
					'tidur' => $student['tidur'],
					'tidak_mendengarkan' => $student['tidak_mendengarkan'],
					'total_keaktifan' => $student['total_keaktifan'],
					'total_sikap' => $student['total_sikap'],
					'total_points' => $student['total_points'],
					'created_by' => $this->session->userdata('id'),
					// 'created_by' => 'idlogin'
					// 'ranking' => $student['ranking'],
				]);
			}
		}


		echo json_encode([
			'status' => 'success',
			'message' => 'Data berhasil disimpan.',
		]);
		return;
	}


	// Backup
	// public function save_student_points()
	// {
	// 	$data = $this->input->post('data'); // Ambil data dari request

	// 	if (!$data || !is_array($data)) {
	// 		echo json_encode([
	// 			'status' => 'error',
	// 			'message' => 'Data tidak valid.',
	// 		]);
	// 		return;
	// 	}

	// 	$students = [];
	// 	// Bobot Keaktifan dan Sikap
	// 	$weights = [
	// 		'sering_menjawab' => 0.2,
	// 		'sering_bertanya' => 0.2,
	// 		'membantu_guru' => 0.2,

	// 		'terlambat' => 0.133,
	// 		'tidur' => 0.133,
	// 		'tidak_mendengarkan' => 0.133,
	// 	];

	// 	// Proses data siswa untuk menghitung total keaktifan dan sikap
	// 	foreach ($data as $item) {
	// 		if (!isset($item['student_id'])) {
	// 			continue; // Abaikan jika student_id tidak ada
	// 		}

	// 		// Hitung total keaktifan dan sikap
	// 		$total_keaktifan =
	// 			($item['sering_menjawab'] ?? 0) * $weights['sering_menjawab'] +
	// 			($item['sering_bertanya'] ?? 0) * $weights['sering_bertanya'] +
	// 			($item['membantu_guru'] ?? 0) * $weights['membantu_guru'];

	// 		$total_sikap =
	// 			($item['terlambat'] ?? 0) * $weights['terlambat'] +
	// 			($item['tidur'] ?? 0) * $weights['tidur'] +
	// 			($item['tidak_mendengarkan'] ?? 0) * $weights['tidak_mendengarkan'];

	// 		// Simpan total keaktifan dan sikap
	// 		$students[] = [
	// 			'student_id' => $item['student_id'],
	// 			'sering_menjawab' => $item['sering_menjawab'],
	// 			'sering_bertanya' => $item['sering_bertanya'],
	// 			'membantu_guru' => $item['membantu_guru'],
	// 			'terlambat' => $item['terlambat'],
	// 			'tidur' => $item['tidur'],
	// 			'tidak_mendengarkan' => $item['tidak_mendengarkan'],
	// 			'total_keaktifan' => round($total_keaktifan, 3),
	// 			'total_sikap' => round($total_sikap, 3),
	// 		];
	// 	}

	// 	// Urutkan siswa berdasarkan total keaktifan dan sikap (tertinggi ke terendah)
	// 	// usort($students, function ($a, $b) {
	// 	// 	return ($b['total_keaktifan'] + $b['total_sikap']) <=> ($a['total_keaktifan'] + $a['total_sikap']);
	// 	// });
	// 	usort($students, function ($a, $b) {
	// 		// Pertama urutkan berdasarkan total keaktifan
	// 		if (($b['total_keaktifan'] + $b['total_sikap']) == ($a['total_keaktifan'] + $a['total_sikap'])) {
	// 			// Jika total keaktifan dan sikap sama, urutkan berdasarkan total keaktifan
	// 			return $b['total_keaktifan'] <=> $a['total_keaktifan'];
	// 		}
	// 		return ($b['total_keaktifan'] + $b['total_sikap']) <=> ($a['total_keaktifan'] + $a['total_sikap']);
	// 	});

	// 	// Hitung ranking berdasarkan urutan setelah di-sort
	// 	$ranking = 1;
	// 	foreach ($students as &$student) {
	// 		$student['ranking'] = $ranking++; // Tentukan ranking berdasarkan urutan
	// 		// Periksa apakah siswa sudah ada di database
	// 		$existing = $this->db->get_where('student_points', ['student_id' => $student['student_id']])->row();

	// 		if ($existing) {
	// 			// Jika data siswa sudah ada, lakukan update
	// 			$this->db->where('student_id', $student['student_id']);
	// 			$this->db->update('student_points', [
	// 				'sering_menjawab' => $student['sering_menjawab'],
	// 				'sering_bertanya' => $student['sering_bertanya'],
	// 				'membantu_guru' => $student['membantu_guru'],
	// 				'terlambat' => $student['terlambat'],
	// 				'tidur' => $student['tidur'],
	// 				'tidak_mendengarkan' => $student['tidak_mendengarkan'],
	// 				'total_keaktifan' => $student['total_keaktifan'],
	// 				'total_sikap' => $student['total_sikap'],
	// 				'ranking' => $student['ranking'],
	// 			]);
	// 		} else {
	// 			// Jika data siswa belum ada, lakukan insert
	// 			$this->db->insert('student_points', [
	// 				'student_id' => $student['student_id'],
	// 				'sering_menjawab' => $student['sering_menjawab'],
	// 				'sering_bertanya' => $student['sering_bertanya'],
	// 				'membantu_guru' => $student['membantu_guru'],
	// 				'terlambat' => $student['terlambat'],
	// 				'tidur' => $student['tidur'],
	// 				'tidak_mendengarkan' => $student['tidak_mendengarkan'],
	// 				'total_keaktifan' => $student['total_keaktifan'],
	// 				'total_sikap' => $student['total_sikap'],
	// 				'ranking' => $student['ranking'],
	// 			]);
	// 		}
	// 	}

	// 	echo json_encode([
	// 		'status' => 'success',
	// 		'message' => 'Data berhasil disimpan.',
	// 	]);
	// 	return;
	// }

	public function getRankings()
	{
		$codeKelas = $this->input->post('kelas');

		$dataSiswa = $this->M_siswa->getStudentRankings($codeKelas);
		if ($dataSiswa) {
			// Kirim data siswa dalam format JSON
			echo json_encode([
				'status' => 'success',
				'data' => $dataSiswa
			]);
		} else {
			// Jika tidak ada hasil
			echo json_encode([
				'status' => 'error',
				'message' => 'Tidak ada siswa yang ditemukan.'
			]);
		}
	}
}
