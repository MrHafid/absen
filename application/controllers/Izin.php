<?php

class Izin extends CI_Controller
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
		$this->load->model('M_izin');
		$this->load->model('M_kelas');
		$this->load->library('form_validation');
		if (!$this->session->userdata('id')) {
			redirect(base_url() . 'auth');
		}
	}

	// view index
	public function index()
	{
		$datauser = $this->M_user->getUserById($this->session->userdata('id'))[0];
		verifikasiuser($datauser['role_id'], $this->uri->segment(1));
		$namabulan = $this->bulan;
		// var_dump($this->M_izin->tampilDataIzinBulanIni());
		// die;
		$data = [
			'title' => WEBNAME . ' Semua Izin',
			'webname' => WEBNAME,
			'user' => $datauser,
			'kelas' => $this->M_kelas->tampilkelas(),
			'dataizin' => $this->M_izin->tampilDataIzinBulanIni()
		];
		$this->load->view('templates/header', $data);
		$this->load->view('izin/semuaizin');
		$this->load->view('templates/footer');
	}

	public function search_izin()
	{
		$codeKelas = $this->input->post('kelas');
		$bulan = $this->input->post('bulan');


		$dataizin = $this->M_izin->searchDataIzinBulanIni($codeKelas, $bulan);
		foreach ($dataizin as &$d) {
			$d['tanggal_izin_formatted'] = namaHariBulanIndonesia($d['tanggal_izin']);
			$d['kelas'] = $this->db->query("SELECT kelas FROM tabel_kelas WHERE id_kelas = ?", [$d['kode_kelas']])->row()->kelas ?? '';
			$d['jurusan'] = $this->db->query("SELECT jurusan FROM tabel_jurusan WHERE id_jurusan = ?", [$d['kode_jurusan']])->row()->jurusan ?? '';
		}

		if ($dataizin) {
			// Kirim data siswa dalam format JSON
			echo json_encode([
				'status' => 'success',
				'data' => $dataizin
			]);
		} else {
			// Jika tidak ada hasil
			echo json_encode([
				'status' => 'error',
				'message' => 'Tidak ada siswa yang ditemukan.'
			]);
		}
	}

	public function search_all_izin()
	{
		$dataizin = $this->M_izin->searchDataIzinBulanIni(null, date('m'));
		foreach ($dataizin as &$d) {
			$d['tanggal_izin_formatted'] = namaHariBulanIndonesia($d['tanggal_izin']);
			$d['kelas'] = $this->db->query("SELECT kelas FROM tabel_kelas WHERE id_kelas = ?", [$d['kode_kelas']])->row()->kelas ?? '';
			$d['jurusan'] = $this->db->query("SELECT jurusan FROM tabel_jurusan WHERE id_jurusan = ?", [$d['kode_jurusan']])->row()->jurusan ?? '';
		}
		if ($dataizin) {
			// Kirim data siswa dalam format JSON
			echo json_encode([
				'status' => 'success',
				'data' => $dataizin
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
