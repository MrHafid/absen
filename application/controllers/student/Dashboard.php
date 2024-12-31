<?php

class Dashboard extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('student/M_auth');
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
	public function index()
	{
		$this->load->helper('sf_helper');

		$datauser = array_merge($this->M_auth->getUserByNis($this->session->userdata('nis'))[0], ['level' => $this->session->userdata('level')]);

		$this->load->model('M_absensi');
		$this->load->model('M_data');
		$data_presensi = $this->M_data->get_presensi_day($datauser['nis']);
		$ds = $this->M_data->get_dashboard_presensi_bulanan($datauser['nis']);
		$presensi = null;
		if ($data_presensi['err_code'] == 0) {
			$presensi = $data_presensi['data'];
		}
		$data = [
			'title' => WEBNAME . 'Siswa Dashboard',
			'user' => $datauser,
			'webname' => WEBNAME,
			'presensi' => $presensi,
			'presensi_month' => $ds['data'],
			'cekliburnasional' => $this->M_absensi->cekliburnasional(date('Y-m-d')),
			'cekliburweekend' => $this->M_absensi->cekstatusweekend(strtolower(hari_ini()))
		];

		$this->load->view('student/templates/header', $data);
		$this->load->view('student/dashboard/index');
		$this->load->view('student/templates/footer');
	}
}
