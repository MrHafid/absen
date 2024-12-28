<?php

class M_notif extends CI_Model
{
    public function send_email($tujuan, $subjek, $message)
    {
        // Konfigurasi email
        $config = [
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'protocol'  => 'smtp',
            'smtp_host' => 'smtp.gmail.com',
            'smtp_user' => 'watchingvideo291@gmail.com',  // Email gmail
            'smtp_pass'   => 'Videowatching123',  // Password gmail
            'smtp_crypto' => 'ssl',
            'smtp_port'   => 465,
            'crlf'    => "\r\n",
            'newline' => "\r\n"
        ];

        // Load library email dan konfigurasinya
        $this->load->library('email', $config);

        // Email dan nama pengirim
        $this->email->from('tesabsen@absen.com', 'Web Absensi siswa');

        // Email penerima
        $this->email->to($tujuan); // Ganti dengan email tujuan

        // Lampiran email, isi dengan url/path file
        // $this->email->attach('https://images.pexels.com/photos/169573/pexels-photo-169573.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');

        // Subject email
        $this->email->subject($subjek);

        // Isi email
        $this->email->message($message);

        // Tampilkan pesan sukses atau error
        if ($this->email->send()) {
            return true;
        } else {
            return false;
        }
    }

    public function send_whatsapp($nomor, $pesan)
    {
        $tab = $this->db->get('tabel_api')->result_array();
        $count = $this->db->count_all_results('tabel_api');
        if ($count == 1) {
            foreach ($tab as $tabel_api) {
                $curl = curl_init();
                $target = $nomor;
                $sender = $tabel_api['sender'];
                $apikey = $tabel_api['api_key'];
                $urls = $tabel_api['url'];

                curl_setopt_array($curl, array(
                    CURLOPT_URL => $urls,
                    CURLOPT_RETURNTRANSFER => true,
                    CURLOPT_ENCODING => "",
                    CURLOPT_MAXREDIRS => 10,
                    CURLOPT_TIMEOUT => 0,
                    CURLOPT_FOLLOWLOCATION => true,
                    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                    CURLOPT_CUSTOMREQUEST => "POST",
                    CURLOPT_POSTFIELDS => array(
                        'api_key' => $apikey,
                        'sender' => $sender,
                        'number' => $target,
                        'message' => $pesan,
                    ),
                ));

                $response = curl_exec($curl);

                curl_close($curl);

                return $response;
            }
        }
    }
}
