<div class="content-body">
	<!-- row -->


	<?php if ($this->session->flashdata('flash')) : ?>
		<div class="alert alert-<?= $this->session->flashdata('flash')['alert'] ?> alert-dismissible alert-alt fade show my-4 mx-5">
			<button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
			</button>
			<strong><?= $this->session->flashdata('flash')['alert'] ?>!</strong> <?= $this->session->flashdata('flash')['message']; ?>.
		</div>
	<?php endif; ?>

	<script>
		const base_url = document.querySelector('meta[name="base-url"]').getAttribute('content');
	</script>

	<style>
		.table {
			margin-bottom: 0;
			/* Hilangkan margin bawah tabel */
		}

		.modal-body {
			max-height: 600px;
			overflow-y: auto;
			/* Tambahkan scroll jika tinggi melebihi batas */
		}
	</style>

	<div class="col-xl-12 mt-5">
		<div class="row">
			<div class="col-md-6">
				<!-- Bagian Kiri: Form Search Kelas -->
				<div class="card">
					<div class="card-header">
						<h4>Cari Kelas</h4>
					</div>
					<div class="card-body">
						<form id="formPoints" class="form-horizontal">
							<div class="form-group">
								<label for="kelas" class="control-label">Kelas</label>
								<select name="kelas" id="kelas" class="form-control" required>
									<option value="" disabled selected>Pilih kelas...</option>
									<?php foreach ($kelas as $k) : ?>
										<option value="<?= $k['id_kelas']; ?>"><?= $k['kelas']; ?></option>
									<?php endforeach; ?>
								</select>
							</div>
							<button type="submit" name="pencarian" class="btn btn-secondary btn-sm">
								<i class="flaticon-381-search-1"></i> Cari Siswa
							</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<!-- Bagian Kanan: List Kriteria -->
				<div class="card">
					<div class="card-header">
						<h4>Kriteria</h4>
					</div>
					<div class="card-body">
						<!-- Keterangan Penilaian -->
						<div class="row">
							<!-- Sub-list Keaktifan -->
							<div class="col-md-6">
								<h5>Keaktifan (Benefit)</h5>
								<ol>
									<li>C1.1: Sering Menjawab</li>
									<li>C1.2: Sering Bertanya</li>
									<li>C1.3: Membantu Guru</li>
								</ol>
							</div>
							<!-- Sub-list Sikap -->
							<div class="col-md-6">
								<h5>Sikap (Benefit)</h5>
								<ol>
									<li>C2.1: Tidak Terlambat</li>
									<li>C2.2: Tidak Tidur</li>
									<li>C2.3: Mendengarkan Guru</li>
								</ol>
							</div>
						</div>
						<hr>
						<div class="row">
							<!-- Sub-list Keaktifan -->
							<div class="col-md-6">
								<h5>Bobot Keaktifan</h5>
								<ol>
									<li>C1.1: 0.2</li>
									<li>C1.2: 0.2</li>
									<li>C1.3: 0.2</li>
								</ol>
								<h5>Nilai Keaktifan 1 - 5</h5>
							</div>
							<!-- Sub-list Sikap -->
							<div class="col-md-6">
								<h5>Sikap</h5>
								<ol>
									<li>C2.1: 0.133</li>
									<li>C2.2: 0.133</li>
									<li>C2.3: 0.133</li>
								</ol>
								<h5>Nilai Sikap 1 - 5</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Penilaian Siswa</h4>
				<button class="btn btn-info btn-sm btn-ranking" data-toggle="modal" data-target="#rankingModal">Lihat Ranking</button>
			</div>
			<div class="card-body table-responsive">
				<table class="table display min-w850" id="tableSiswa">
					<thead>
						<tr>
							<th rowspan="2">No</th>
							<th rowspan="2">Nama</th>
							<th colspan="3" class="text-center">Keaktifan</th>
							<th colspan="3" class="text-center">Sikap</th>
							<th rowspan="2">Aksi</th>
						</tr>
						<tr>
							<th>C1.1</th>
							<th>C1.2</th>
							<th>C1.3</th>
							<th>C2.1</th>
							<th>C2.2</th>
							<th>C2.3</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="rankingModal" tabindex="-1" aria-labelledby="rankingModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="rankingModalLabel">Ranking Siswa</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body" style="max-height: 600px; overflow-y: auto;">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>#</th>
							<th>Nama Siswa</th>
							<th>Total Points</th>
							<th>Ranking</th>
						</tr>
					</thead>
					<tbody id="rankingTableBody">
					</tbody>
				</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>
</div>

<script>
	$(document).ready(function() {
		// Tampilkan data dalam tabel ketika modal dibuka
		$('#rankingModal').on('show.bs.modal', function() {
			// Ambil data dari form
			var kelas = $("#kelas").val();
			var tableBody = $('#rankingTableBody');
			tableBody.empty(); // Kosongkan isi tabel sebelumnya

			$.ajax({
				url: '<?= base_url('studentpoints/getRankings') ?>', // Ganti dengan URL endpoint API Anda
				method: 'POST',
				dataType: 'json',
				data: {
					kelas: kelas,
				},
				success: function(response) {
					console.log(response);
					if (response.status === "success") {
						// Tambahkan baris data ke tabel
						response.data.forEach(function(student, index) {
							var row = $('<tr></tr>');
							row.append('<td>' + (index + 1) + '</td>'); // Kolom ranking
							row.append('<td>' + student.nama_siswa + '</td>'); // Kolom nama siswa
							row.append('<td>' + student.total_points + '</td>'); // Kolom total points
							row.append('<td>Rank ' + (index + 1) + '</td>'); // Kolom ranking sebagai teks
							tableBody.append(row);
						});
					}

				},
				error: function(xhr, status, error) {
					console.error('Error fetching rankings:', error);
					tableBody.append('<tr><td colspan="3" class="text-center text-danger">Gagal mengambil data</td></tr>');
				}
			});


		});

		// Menutup modal
		// document.getElementById('closeModal').onclick = function() {
		// 	document.getElementById('rankingModalRanking').style.display = 'none';
		// };
	});


	$(document).ready(function() {
		const students = []; // Ganti dengan data siswa yang sesungguhnya

		// Inisialisasi DataTable
		const table = $('#tableSiswa').DataTable({
			language: {
				emptyTable: 'Data siswa kosong / kelas belum dipilih', // Pesan jika tabel kosong
			},
			processing: true, // Menampilkan loading saat memproses data
			serverSide: false, // Gunakan client-side data (tidak ambil data dari server)
		});

		$("#formPoints").on("submit", function(e) {
			e.preventDefault(); // Mencegah form melakukan submit secara default

			// Ambil data dari form
			var kelas = $("#kelas").val();

			// Kirim data ke controller via AJAX
			$.ajax({
				url: "<?= base_url('studentpoints/search_siswa_kelas') ?>", // URL controller
				method: "POST",
				dataType: "json",
				data: {
					kelas: kelas,
				},
				success: function(response) {
					// Tampilkan hasil pencarian
					if (response.status === "success") {
						const siswaList = response.data;
						var tbody = $("#tableSiswa tbody");
						// tbody.html(""); // Kosongkan tabel

						table.clear();

						siswaList.forEach((siswa, index) => {
							var row = [
								index + 1,
								siswa.nama_siswa,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_1">
                                <option value="1" ${siswa.C1_1 == 1 ? 'selected' : ''}>Tidak Pernah</option>
                                <option value="2" ${siswa.C1_1 == 2 ? 'selected' : ''}>Jarang</option>
                                <option value="3" ${siswa.C1_1 == 3 ? 'selected' : ''}>Cukup Sering</option>
                                <option value="4" ${siswa.C1_1 == 4 ? 'selected' : ''}>Sering</option>
                                <option value="5" ${siswa.C1_1 == 5 ? 'selected' : ''}>Sangat Sering</option>
                            </select>`,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_2">
                                <option value="1" ${siswa.C1_2 == 1 ? 'selected' : ''}>Tidak Pernah</option>
                                <option value="2" ${siswa.C1_2 == 2 ? 'selected' : ''}>Jarang</option>
                                <option value="3" ${siswa.C1_2 == 3 ? 'selected' : ''}>Cukup Sering</option>
                                <option value="4" ${siswa.C1_2 == 4 ? 'selected' : ''}>Sering</option>
                                <option value="5" ${siswa.C1_2 == 5 ? 'selected' : ''}>Sangat Sering</option>
                            </select>`,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_3">
                                <option value="1" ${siswa.C1_3 == 1 ? 'selected' : ''}>Tidak Pernah</option>
                                <option value="2" ${siswa.C1_3 == 2 ? 'selected' : ''}>Jarang</option>
                                <option value="3" ${siswa.C1_3 == 3 ? 'selected' : ''}>Cukup Sering</option>
                                <option value="4" ${siswa.C1_3 == 4 ? 'selected' : ''}>Sering</option>
                                <option value="5" ${siswa.C1_3 == 5 ? 'selected' : ''}>Sangat Sering</option>
                            </select>`,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_1">
                                <option value="1" ${siswa.C2_1 == 1 ? 'selected' : ''}>Sering Terlambat</option>
                                <option value="2" ${siswa.C2_1 == 2 ? 'selected' : ''}>Kadang Terlambat</option>
                                <option value="3" ${siswa.C2_1 == 3 ? 'selected' : ''}>Cukup Tepat Waktu</option>
                                <option value="4" ${siswa.C2_1 == 4 ? 'selected' : ''}>Tepat Waktu</option>
                                <option value="5" ${siswa.C2_1 == 5 ? 'selected' : ''}>Selalu Tepat Waktu</option>
                            </select>`,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_2">
                                <option value="1" ${siswa.C2_2 == 1 ? 'selected' : ''}>Sering Tidur</option>
                                <option value="2" ${siswa.C2_2 == 2 ? 'selected' : ''}>Jarang Tidur</option>
                                <option value="3" ${siswa.C2_2 == 3 ? 'selected' : ''}>Cukup Fokus</option>
                                <option value="4" ${siswa.C2_2 == 4 ? 'selected' : ''}>Fokus</option>
                                <option value="5" ${siswa.C2_2 == 5 ? 'selected' : ''}>Sangat Fokus</option>
                            </select>`,
								`<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_3">
                                <option value="1" ${siswa.C2_3 == 1 ? 'selected' : ''}>Sering Tidak Mendengarkan</option>
                                <option value="2" ${siswa.C2_3 == 2 ? 'selected' : ''}>Kadang Mendengarkan</option>
                                <option value="3" ${siswa.C2_3 == 3 ? 'selected' : ''}>Cukup Mendengarkan</option>
                                <option value="4" ${siswa.C2_3 == 4 ? 'selected' : ''}>Mendengarkan</option>
                                <option value="5" ${siswa.C2_3 == 5 ? 'selected' : ''}>Selalu Mendengarkan</option>
                            </select>`,
								`<button class="btn btn-success btn-sm save-row" data-id="${siswa.id_siswa}">Simpan</button>`
							];

							// tbody.append(row);
							table.row.add(row).draw();
						});
					} else {
						alert("Gagal memuat data siswa: " + response.message);
					}
				},
				error: function() {
					alert("Terjadi kesalahan saat memuat data siswa.");
				}
			});
		});

		// initSiswa();
	});

	// Init
	function initSiswa() {
		$.ajax({
			url: "<?= base_url('studentpoints/search_siswa_kelas') ?>", // URL controller
			method: "POST",
			dataType: "json",
			data: {
				// kelas: kelas,
			},
			success: function(response) {
				// Tampilkan hasil pencarian
				if (response.status === "success") {
					const siswaList = response.data;
					var tbody = $("#tableSiswa tbody");
					tbody.html(""); // Kosongkan tabel

					siswaList.forEach((siswa, index) => {
						var row = `
                    <tr data-id="${siswa.id_siswa}">
					<td>${index + 1}</td>
					<td>${siswa.nama_siswa}</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_1">
							<option value="1" ${siswa.C1_1 == 1 ? 'selected' : ''}>Tidak Pernah</option>
							<option value="2" ${siswa.C1_1 == 2 ? 'selected' : ''}>Jarang</option>
							<option value="3" ${siswa.C1_1 == 3 ? 'selected' : ''}>Cukup Sering</option>
							<option value="4" ${siswa.C1_1 == 4 ? 'selected' : ''}>Sering</option>
							<option value="5" ${siswa.C1_1 == 5 ? 'selected' : ''}>Sangat Sering</option>
						</select>
					</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_2">
							<option value="1" ${siswa.C1_2 == 1 ? 'selected' : ''}>Tidak Pernah</option>
							<option value="2" ${siswa.C1_2 == 2 ? 'selected' : ''}>Jarang</option>
							<option value="3" ${siswa.C1_2 == 3 ? 'selected' : ''}>Cukup Sering</option>
							<option value="4" ${siswa.C1_2 == 4 ? 'selected' : ''}>Sering</option>
							<option value="5" ${siswa.C1_2 == 5 ? 'selected' : ''}>Sangat Sering</option>
						</select>
					</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C1_3">
							<option value="1" ${siswa.C1_3 == 1 ? 'selected' : ''}>Tidak Pernah</option>
							<option value="2" ${siswa.C1_3 == 2 ? 'selected' : ''}>Jarang</option>
							<option value="3" ${siswa.C1_3 == 3 ? 'selected' : ''}>Cukup Sering</option>
							<option value="4" ${siswa.C1_3 == 4 ? 'selected' : ''}>Sering</option>
							<option value="5" ${siswa.C1_3 == 5 ? 'selected' : ''}>Sangat Sering</option>
						</select>
					</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_1">
							<option value="1" ${siswa.C2_1 == 1 ? 'selected' : ''}>Sering Terlambat</option>
							<option value="2" ${siswa.C2_1 == 2 ? 'selected' : ''}>Kadang Terlambat</option>
							<option value="3" ${siswa.C2_1 == 3 ? 'selected' : ''}>Cukup Tepat Waktu</option>
							<option value="4" ${siswa.C2_1 == 4 ? 'selected' : ''}>Tepat Waktu</option>
							<option value="5" ${siswa.C2_1 == 5 ? 'selected' : ''}>Selalu Tepat Waktu</option>
						</select>
					</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_2">
							<option value="1" ${siswa.C2_2 == 1 ? 'selected' : ''}>Sering Tidur</option>
							<option value="2" ${siswa.C2_2 == 2 ? 'selected' : ''}>Jarang Tidur</option>
							<option value="3" ${siswa.C2_2 == 3 ? 'selected' : ''}>Cukup Fokus</option>
							<option value="4" ${siswa.C2_2 == 4 ? 'selected' : ''}>Fokus</option>
							<option value="5" ${siswa.C2_2 == 5 ? 'selected' : ''}>Sangat Fokus</option>
						</select>
					</td>
					<td>
						<select class="form-control input-value" data-id="${siswa.id_siswa}" data-field="C2_3">
							<option value="1" ${siswa.C2_3 == 1 ? 'selected' : ''}>Sering Tidak Mendengarkan</option>
							<option value="2" ${siswa.C2_3 == 2 ? 'selected' : ''}>Kadang Mendengarkan</option>
							<option value="3" ${siswa.C2_3 == 3 ? 'selected' : ''}>Cukup Mendengarkan</option>
							<option value="4" ${siswa.C2_3 == 4 ? 'selected' : ''}>Mendengarkan</option>
							<option value="5" ${siswa.C2_3 == 5 ? 'selected' : ''}>Selalu Mendengarkan</option>
						</select>
					</td>
					<td>
						<button class="btn btn-success btn-sm save-row" data-id="${siswa.id_siswa}">Simpan</button>
					</td>
				</tr>

                `;
						tbody.append(row);
					});

					// Update DataTable setelah data baru dimuat
					table.clear().draw();
					table.rows.add(tbody.find('tr')).draw();
				} else {
					alert("Gagal memuat data siswa: " + response.message);
				}
			},
			error: function() {
				alert("Terjadi kesalahan saat memuat data siswa.");
			}
		});
	}

	// Save 
	$(document).on('click', '.save-row', function() {
		const studentId = $(this).data('id'); // Ambil data ID siswa dari atribut data-id

		// Cek apakah studentId ada atau tidak
		if (!studentId) {
			alert("ID siswa tidak ditemukan!");
			return; // Jangan lanjutkan jika ID siswa tidak ada
		}

		const row = $(this).closest('tr'); // Ambil baris terkait
		const rowData = {
			student_id: studentId, // ID siswa yang benar
			sering_menjawab: parseInt(row.find('select[data-field="C1_1"]').val()), // Ambil nilai C1_1
			sering_bertanya: parseInt(row.find('select[data-field="C1_2"]').val()), // Ambil nilai C1_2
			membantu_guru: parseInt(row.find('select[data-field="C1_3"]').val()), // Ambil nilai C1_3
			terlambat: parseInt(row.find('select[data-field="C2_1"]').val()), // Ambil nilai C2_1
			tidur: parseInt(row.find('select[data-field="C2_2"]').val()), // Ambil nilai C2_2
			tidak_mendengarkan: parseInt(row.find('select[data-field="C2_3"]').val()) // Ambil nilai C2_3
		};

		console.log(rowData); // Debugging, pastikan student_id ada
		// Kirim data ke server
		$.ajax({
			url: '<?= base_url('studentpoints/save_student_points') ?>', // Endpoint backend
			method: 'POST',
			data: {
				data: [rowData] // Kirim data sebagai array JSON string
			},
			dataType: 'json',
			success: function(response) {
				if (response.status === 'success') {
					alert('Data berhasil disimpan!');
				} else {
					alert(response.message || 'Terjadi kesalahan saat menyimpan data.');
				}
			},
			error: function(xhr, status, error) {
				alert('Gagal menyimpan data: ' + error);
			},
		});
	});
</script>
