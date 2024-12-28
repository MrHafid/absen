<?php

class Api extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_kelas');
        $this->load->model('M_jurusan');
        $this->load->model('M_user');
        $this->load->model('M_menu');
        $this->load->library('form_validation');
    }

    // api
    public function apimanagement()
    {

        $datauser = $this->M_user->getUserById($this->session->userdata('id'))[0];
        $url = $this->uri->segment(1) . '/' . $this->uri->segment(2);

        verifikasiuser($datauser['role_id'], $url);
        $data = [
            'title' => WEBNAME . '| API Management',
            'user' => $datauser,
            'webname' => WEBNAME,
            'titleedit' => 'Edit API',
            'titletambah' => 'Tambah API',
        ];

        $this->load->view('templates/header', $data);
        $this->load->view('menu/apimanagement', $data);
        $this->load->view('templates/footer');
    }
}
