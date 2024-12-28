<?php

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('student/M_auth');
        $this->load->model('M_siswa');
    }

    public function index()
    {
        if ($this->session->userdata('id_siswa') && $this->session->userdata('level') == 'siswa') {
            redirect(base_url() . 'student/dashboard');
        } else {
            $this->load->view('student/auth/login');
        }
    }

    public function linked_account()
    {
        

        $this->load->view('student/auth/linked');
    }

    public function linked_proccess()
    {
        $nis = $this->input->get('nis');
        $data_query = $this->db->query("SELECT * FROM tabel_siswa WHERE nis = '$nis'");
        if ($data_query->num_rows() == 0) {
            redirect(base_url('student/auth/'));
        } else {
            if($this->input->get('kirim')){
               $email = $this->input->get('email');
        $password = $this->input->get('password');
        $nis = $this->input->get('nis');

        $data = [
            'email' => $email,
            'password' => password_hash($password, PASSWORD_DEFAULT),
            'kode_unik' => random_int(100, 999)
        ];
        $this->db->where(['nis_siswa' => $nis])->update('login_siswa', $data);
        $this->session->set_flashdata('flash', ['alert' => 'success', 'message' => 'Berhasil kaitkan akun, silahkan login']);
        redirect((base_url('student/auth/')));
            }
            $data = [
                'datasiswa' => $this->M_siswa->dataspesifiksiswa($nis)
            ];
            $this->load->view('student/auth/linked_proccess', $data);
        }
    }

    public function verif_email()
    {
        if (!$this->uri->segment(4)) {
            $this->load->view('student/auth/verifemail');
        } else {
            $kodeunik = $this->uri->segment(4);
            $nis = explode('=', base64_decode($kodeunik))[0];
            $tanggal = explode('=', base64_decode($kodeunik))[1];
            if ($this->M_auth->cekkodeunik($kodeunik, $nis) < 1) {
                $this->load->view('errors/custom', ['pesanerror' => 'Link verifikasi tidak valid/kadaluarsa 2']);
            } else if (date('Y-m-d') != $tanggal) {
                $this->load->view('errors/custom', ['pesanerror' => 'Link verifikasi tidak valid/kadaluarsa 3']);
            } else {
                $this->M_auth->aktifkanuser($nis);
                $this->M_auth->resetkodeunik($nis);
                $this->session->set_flashdata('flash', ['alert' => 'success', 'message' => 'Akun berhasil diaktifkan, silahkan login']);
                redirect(base_url('student/auth'));
            }
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
       Anda Berhasil Logout !
     </div>');
        redirect('student/auth');
    }
}
