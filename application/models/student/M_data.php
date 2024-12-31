<?php
class M_data extends CI_Model
{

	public function datalibur()
	{
		$tgl = date('Y-m');
		return $this->db->like('tanggal', $tgl)->where('status', 'Aktif')->get('tabel_libur')->result_array();
	}

	public function dataakunsiswa($nis)
	{
		$this->db->select('*');
		$this->db->from('login_siswa');
		$this->db->join('tabel_siswa', 'tabel_siswa.nis = login_siswa.nis_siswa');
		$this->db->where('nis_siswa', $nis);
		return $this->db->get()->result_array();
	}

	public function check_presensi($nis, $type)
	{

		$nowd = date('Y-m-d');

		$err_code = 0;
		$err_message = '';
		$data = null;

		$this->db->from('tabel_detail_absen');
		$this->db->where('nis', $nis);
		$this->db->where('tanggal_absen', $nowd);
		$this->db->group_start();
		if ($type == 'in') {
			$this->db->where('masuk', 1);
		}

		if ($type == 'out') {
			$this->db->or_where('keluar', 1);
		}
		$this->db->group_end();
		$this->db->order_by('tanggal_absen desc');
		$check = $this->db->get();

		if ($check->num_rows() > 0) {
			$err_code++;
			$err_message = 'Siswa sudah absen';
			$data = null;
		} else {
			$data = $check->result_array();
		}


		return array(
			'err_code' => $err_code,
			'err_message' => $err_message,
			'data' => $data
		);
	}

	public function get_presensi_day($nis)
	{

		$nowd = date('Y-m-d');

		$err_code = 0;
		$err_message = '';
		$data = null;

		$this->db->from('tabel_detail_absen');
		$this->db->where('nis', $nis);
		$this->db->where('tanggal_absen', $nowd);
		$this->db->order_by('jam_absen desc');
		$check = $this->db->get();

		if ($check->num_rows() == 0) {
			$err_code++;
			$err_message = 'Data Absen tidak ditemukan.';
			$data = null;
		} else {
			$data = $check->result_array();
		}


		return array(
			'err_code' => $err_code,
			'err_message' => $err_message,
			'data' => $data
		);
	}

	public function get_face_desc($nis)
	{
		// Query untuk mendapatkan face descriptor berdasarkan nis
		$this->db->from('tabel_siswa');  // Sesuaikan dengan nama tabel kamu
		$this->db->select('faceid');  // Pilih kolom faceid (atau nama kolom lain tempat face_descriptor disimpan)
		$this->db->where('faceid !=', NULL);  // Pilih kolom faceid (atau nama kolom lain tempat face_descriptor disimpan)
		$this->db->where('nis', $nis);  // Filter berdasarkan nis
		$query = $this->db->get();  // Eksekusi query

		if ($query->num_rows() > 0) {
			// Jika data ditemukan, kembalikan faceid sebagai hasilnya
			return $query->row()->faceid;  // Atau bisa kembalikan sebagai array jika ingin lebih dari satu nilai
		} else {
			// Jika data tidak ditemukan
			return null;
		}
	}

	public function save_face_desc($nis, $face)
	{
		$this->db->from('tabel_siswa');
		$this->db->where('nis', $nis);
		$check = $this->db->get();

		if ($check->num_rows() > 0) {
			$this->db->where('nis', $nis);
			$update = $this->db->update('tabel_siswa', $face);
			if ($update) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	public function send_presensi($nis, $idkelas, $idjurusan, $type, $lat, $long)
	{
		$nowd = date('Y-m-d');

		$err_code = 0;
		$err_message = '';
		$data = null;

		$this->db->from('tabel_detail_absen');
		$this->db->where('nis', $nis);
		$this->db->where('tanggal_absen', $nowd);
		$this->db->group_start();
		if ($type == 'in') {
			$this->db->where('masuk', 1);
		}

		if ($type == 'out') {
			$this->db->where('keluar', 1);
		}
		$this->db->group_end();

		$check = $this->db->get();

		if ($check->num_rows() > 0) {
			$err_code++;
			$err_message = 'Siswa sudah absen tidak perlu melakukan lagi!.';
		}

		if ($err_code == 0) {
			$jam = date("H:i:s");
			if ($type == 'in') {
				$data = [
					'jam_absen' => $jam,
					'tanggal_absen' => $nowd,
					'nis' => $nis,
					'keterangan' => 'h',
					'kode_kelas' => $idkelas,
					'kode_jurusan' => $idjurusan,
					'masuk' => 1,
					'lat' => $lat,
					'long' => $long
				];
			}

			if ($type == 'out') {
				$data = [
					'jam_absen' => $jam,
					'tanggal_absen' => $nowd,
					'nis' => $nis,
					'keterangan' => 'h',
					'kode_kelas' => $idkelas,
					'kode_jurusan' => $idjurusan,
					'keluar' => 1,
					'lat' => $lat,
					'long' => $long
				];
			}

			$send = $this->db->insert('tabel_detail_absen', $data);

			if (!$send) {
				$err_code++;
				$err_message = 'Gagal melakukan absen!';
			} else {
				$err_code = 0;
				$err_message = 'Berhasil!';
			}
		}

		return array(
			'err_code' => $err_code,
			'err_message' => $err_message
		);
	}

	public function get_dashboard_presensi_bulanan()
	{
		$current_month = date('Y-m'); // Mendapatkan format bulan sekarang (YYYY-MM)

		$err_code = 0;
		$err_message = '';
		$data = null;

		// Query untuk menghitung total berdasarkan tipe keterangan langsung menjadi kolom
		$this->db->select("
			SUM(CASE WHEN keterangan = 'H' THEN 1 ELSE 0 END) as total_hadir,
			SUM(CASE WHEN keterangan = 'S' THEN 1 ELSE 0 END) as total_sakit,
			SUM(CASE WHEN keterangan = 'I' THEN 1 ELSE 0 END) as total_izin,
			SUM(CASE WHEN keterangan = 'A' THEN 1 ELSE 0 END) as total_alpa
		");
		$this->db->from('tabel_detail_absen');
		$this->db->like('tanggal_absen', $current_month, 'after'); // Hanya ambil data bulan sekarang
		$query = $this->db->get();

		if ($query->num_rows() == 0) {
			$err_code++;
			$err_message = 'Data absen untuk bulan ini tidak ditemukan.';
		} else {
			$data = $query->row_array(); // Mengambil data sebagai row (bukan array index)
		}

		return array(
			'err_code' => $err_code,
			'err_message' => $err_message,
			'data' => $data
		);
	}
}
