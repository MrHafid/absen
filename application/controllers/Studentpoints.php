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
			'title' => WEBNAME . 'Data Siswa',
			'webname' => WEBNAME,
			'kelas' => $this->M_kelas->tampilkelas(),
			'user' =>  $this->M_user->getUserById($this->session->userdata('id'))[0]
		];
		$this->load->view('templates/header', $data);
		$this->load->view('siswa/studentpoint');
		$this->load->view('templates/footer');
	}
}
