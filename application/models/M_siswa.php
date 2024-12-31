<?php
class M_siswa extends CI_Model
{

	public function datasiswa()
	{
		return  $this->db->select('*')
			->from('tabel_siswa')
			->join('tabel_kelas', 'tabel_kelas.id_kelas = tabel_siswa.kode_kelas')
			->get()->result_array();

		// return  $this->db->get('tabel_siswa')->result_array();
	}

	public function getStudentRankings($idkelas)
	{
		$this->db->select('tabel_siswa.nama_siswa, ROUND(SUM(student_points.total_points), 3) as total_points');
		$this->db->from('student_points');
		$this->db->join('tabel_siswa', 'tabel_siswa.id_siswa = student_points.student_id');
		$this->db->where('tabel_siswa.kode_kelas', $idkelas);
		$this->db->group_by('tabel_siswa.id_siswa'); // Mengelompokkan berdasarkan id_siswa
		$this->db->order_by('total_points', 'DESC'); // Mengurutkan berdasarkan total poin
		$query = $this->db->get();
	
		return $query->result_array();
	}	


	public function getAllSiswaWithPoints()
	{
		$this->db->select('tabel_siswa.id_siswa, tabel_siswa.nama_siswa, 
                       student_points.sering_menjawab AS C1_1, 
                       student_points.sering_bertanya AS C1_2, 
                       student_points.membantu_guru AS C1_3,
                       student_points.terlambat AS C2_1, 
                       student_points.tidur AS C2_2, 
                       student_points.tidak_mendengarkan AS C2_3');
		$this->db->from('tabel_siswa');
		$this->db->join('student_points', 'tabel_siswa.id_siswa = student_points.student_id', 'left');

		$query = $this->db->get();
		return $query->result();
	}

	public function getSiswaWithPoints($kelasId)
	{
		$this->db->select('tabel_siswa.id_siswa, tabel_siswa.nama_siswa, 
                       student_points.sering_menjawab AS C1_1, 
                       student_points.sering_bertanya AS C1_2, 
                       student_points.membantu_guru AS C1_3,
                       student_points.terlambat AS C2_1, 
                       student_points.tidur AS C2_2, 
                       student_points.tidak_mendengarkan AS C2_3');
		$this->db->from('tabel_siswa');
		$this->db->join('student_points', 'tabel_siswa.id_siswa = student_points.student_id', 'left');
		$this->db->where('tabel_siswa.kode_kelas', $kelasId);

		$query = $this->db->get();
		return $query->result();
	}

	public function datasiswaByKelas($idkelas)
	{
		$where = [
			'kode_kelas' => $idkelas
		];
		return  $this->db->select('*')
			->from('tabel_siswa')
			->join('tabel_kelas', 'tabel_kelas.id_kelas = tabel_siswa.kode_kelas')
			->where($where)
			->get()->result_array();
		// return $this->db->where($where)->get('tabel_siswa')->result_array();

	}
	public function dataspesifiksiswa($nis)
	{
		return  $this->db->select('*')
			->from('tabel_siswa')
			->join('tabel_kelas', 'tabel_kelas.id_kelas = tabel_siswa.kode_kelas')
			->where('nis', $nis)->get()->result_array();
	}
	public function inputsiswa($nohp)
	{
		$datasiswa = [
			'id_siswa' => 'SISWA' . random_int(100, 999),
			'nama_siswa' => $this->input->post('nama', true),
			'nis' => $this->input->post('nis', true),
			'tgl_lahir' => $this->input->post('tgl_lahir'),
			'jenis_kelamin' => $this->input->post('jeniskelamin', true),
			'alamat' => $this->input->post('alamat', true),
			'no_telepon' => $nohp,
			'kode_jurusan' => 'default',
			'kode_kelas' => $this->input->post('kelas', true),
			'gambar' => 'default'
		];
		$this->db->insert('tabel_siswa', $datasiswa);
	}

	public function selectnohp($nomor, $nis)
	{
		return   $this->db->select('no_telepon')
			->where('nis', $nis)->get('tabel_siswa')->num_rows();
	}

	public function editsiswa($nomorhp)
	{
		$data = [
			'nama_siswa' => $this->input->post('nama', true),
			'nis' => $this->input->post('nis'),
			'tgl_lahir' => $this->input->post('tgl_lahir'),
			'jenis_kelamin' => $this->input->post('jeniskelamin'),
			'alamat' => $this->input->post('alamat', true),
			'no_telepon' => $nomorhp,
			'kode_kelas' => $this->input->post('kelas')

		];
		$this->db->where('id_siswa', $this->input->post('id_siswa'))
			->update('tabel_siswa', $data);
	}
	public function deletesiswa($idsiswa)
	{
		$this->db->delete('tabel_siswa', ['id_siswa' => $idsiswa]);
	}

	// absen siswa
	public function CekSiswa($nis)
	{
		return $this->db->where('nis', $nis)
			->get('tabel_siswa')->num_rows();
	}
	// absen by siswa,
	public function detailsiswa($nis)
	{
		return $this->db->where('nis', $nis)
			->get('tabel_siswa')->result_array();
	}

	//

	public function DataSiswaByKelasDanJurusan()
	{
		$query = $this->db->query("SELECT DISTINCT kode_kelas FROM tabel_siswa ORDER BY kode_kelas ASC");
		$result = $query->result_array();
		return $result;
	}
}
