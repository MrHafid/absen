<div class="content-body">
	<!-- row -->

	<div class="container-fluid">
		<div class="page-titles">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="javascript:void(0)">Semua Izin</a></li>
				<!-- <li class="breadcrumb-item active"><a href="javascript:void(0)">Data User</a></li> -->
			</ol>
		</div>
		<?php if ($this->session->flashdata('flash')) : ?>
			<div class="alert alert-<?= $this->session->flashdata('flash')['alert'] ?> alert-dismissible alert-alt fade show my-4 mx-5">
				<button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
				</button>
				<strong><?= $this->session->flashdata('flash')['alert'] ?>!</strong> <?= $this->session->flashdata('flash')['message']; ?>.
			</div>
		<?php endif; ?>
		<div class="row">
			<div class="col-12 ">
				<div class="card">
					<div class="card-header">
						<h4>Cari Izin</h4>
					</div>
					<div class="card-body">
						<form id="formIzin" class="form-horizontal">
							<div class="form-row">

								<div class="form-group col-md-6">
									<label class="control-label">Kelas </label>
									<div class="controls">
										<select name="kelas" required="true" class="form-control" required>
											<option value="" disabled selected>Pilih kelas..</option>
											<?php foreach ($kelas as $k) : ?>
												<option value="<?= $k['id_kelas']; ?>"><?= $k['kelas']; ?></option>
											<?php endforeach; ?>
										</select>
									</div>
								</div>
								<div class="form-group col-md-6">
									<label class="control-label">Bulan</label>
									<div class="controls">
										<select name="bulan" required="true" class="form-control">
											<option value="" disabled selected>Pilih bulan..</option>
											<option value="01">Januari</option>
											<option value="02">Februari</option>
											<option value="03">Maret</option>
											<option value="04">April</option>
											<option value="05">Mei</option>
											<option value="06">Juni</option>
											<option value="07">Juli</option>
											<option value="08">Agustus</option>
											<option value="09">September</option>
											<option value="10">Oktober</option>
											<option value="11">November</option>
											<option value="12">Desember</option>
										</select>
									</div>
								</div>

							</div>


							<div class="form-actions">
								<button type="submit" name="pencarian" id="pencarian" value="isset" class="btn-sm btn btn-secondary"> <i class="flaticon-381-search-1"></i> Cari Izin</button>

							</div>
						</form>


					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<?php
			// jika ada pencarian kelas dan bulan
			isset($_GET['pencarian']) ? $pencarian = true : $pencarian = false;
			?>
			<div class="col-xl-12 col-lg-12 col-xxl-12 col-sm-12">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title">Data Izin Siswa Bulan <?= nama_bulan(date('m')) ?></h4>
					</div>
					<div class="card-body">
						<div class="table-responsive ">
							<table class="table verticle-middle table-responsive-md tableIzin">
								<thead>
									<tr>
										<th scope="col">Nama</th>
										<th scope="col">Tanggal</th>
										<th scope="col">Alasan</th>
										<th scope="col">Status</th>
										<th scope="col">Aksi</th>
									</tr>
								</thead>
								<tbody>
									<!-- Data akan dimuat oleh AJAX -->
								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>


		</div>
	</div>
</div>

<div class="modal fade bd-example-modal-lg" id="modalketerangan">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title"></h5>
				<button type="button" class="close" data-dismiss="modal"><span>&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="untukloading"></div>
				<form class="formdetailizin" method="POST">
					<div class="form-row">
						<input type="hidden" name="<?= $this->security->get_csrf_token_name() ?>" value="<?= $this->security->get_csrf_hash() ?>" />
						<input type="hidden" name="id_izin" class="id_izin" id="id_izin">
						<div class="form-group col-md-12">
						</div>

						<div class="form-group col-md-12 form2">
							<label class="labelkelas">Izin Untuk tanggal</label>
							<input type="text" class="form-control" id="tanggalizin" readonly>
						</div>
						<div class="form-group col-md-12 form2">
							<label class="labelkelas">Bukti</label>
							<div class="bukti_izin"></div>
						</div>
						<div class="form-group col-md-12 form2">
							<label for="keterangan_izin">keterangan</label>
							<textarea class="form-control" name="keterangan_izin" id="keterangan_izin" cols="30" rows="10" readonly>  </textarea>
						</div>
					</div>
					<div class="buttonnya">
						<button type="submit" name="submit" value="terima" class="btn btn-primary buttonsubmit izinkan">Izinkan</button>
						<button type="submit" name="submit" value="tolak" class="btn btn-danger buttonsubmit tolakizin">Tolak</button>
					</div>
				</form>

			</div>

		</div>
	</div>
</div>
<script type="text/javascript">
	var tbody = $("#tableIzin tbody");
	// Search
	$(document).ready(function() {
		const students = []; // Ganti dengan data siswa yang sesungguhnya

		// Inisialisasi DataTable
		// const table = $('#tableSiswa').DataTable({
		// 	language: {
		// 		emptyTable: 'Data siswa kosong / kelas belum dipilih', // Pesan jika tabel kosong
		// 	},
		// 	processing: true, // Menampilkan loading saat memproses data
		// 	serverSide: false, // Gunakan client-side data (tidak ambil data dari server)
		// });

		initIzin();

		$("#formIzin").on("submit", function(e) {
			e.preventDefault(); // Mencegah form submit default
			searchIzin();
		});


		// initSiswa();
	});

	function searchIzin() {
		var formData = new FormData($("#formIzin")[0]);
		var kelas = formData.get("kelas");
		var bulan = formData.get("bulan");
		console.log(kelas);

		// Kirim data ke controller via AJAX
		$.ajax({
			url: "<?= base_url('izin/search_izin') ?>", // URL controller
			method: "POST",
			dataType: "json",
			data: {
				kelas: kelas,
				bulan: bulan
			},
			success: function(response) {
				if (response.status === "success") {
					const siswaList = response.data;
					var tbody = $(".tableIzin tbody");
					tbody.html(""); // Kosongkan tabel sebelum diisi

					console.log(siswaList);

					let rows = ''; // Gabungkan semua row
					siswaList.forEach((d) => {
						let badge = d.status === 'Menunggu Konfirmasi' ? 'warning' :
							d.status === 'Diterima' ? 'success' :
							'danger';

						rows += `
                        <tr>
                            <td>
                                ${d.nama_siswa}<br>
                                <span class="text-small">Kelas ${d.kelas} ${d.jurusan}</span>
                            </td>
                            <td>${d.tanggal_izin_formatted}</td>
                            <td><span class="badge badge-rounded badge-${d.type === 'Sakit' ? 'danger' : 'success'}">${d.type}</span></td>
                            <td><span class="badge badge-rounded badge-${badge}">${d.status}</span></td>
                            <td>
                                <button idizin="${d.id}" class="btn-sm btn btn-primary detailizin" data-toggle="modal" data-target="#modalketerangan">Lihat Detail</button>
                            </td>
                        </tr>
                    `;
					});

					tbody.html(rows); // Tambahkan semua rows ke tabel
				} else {
					alert("Gagal memuat data siswa: " + response.message);
				}
			},
			error: function() {
				alert("Terjadi kesalahan saat memuat data siswa.");
			}
		});
	}

	function initIzin() {
		var formData = new FormData($("#formIzin")[0]);
		var kelas = formData.get("kelas");
		var bulan = formData.get("bulan");
		$.ajax({
			url: "<?= base_url('izin/search_all_izin') ?>", // URL controller
			method: "POST",
			dataType: "json",
			data: {
				kelas: kelas,
				bulan: bulan
			},
			success: function(response) {
				if (response.status === "success") {
					const siswaList = response.data;
					var tbody = $(".tableIzin tbody");
					tbody.html(""); // Kosongkan tabel sebelum diisi

					let rows = ''; // Gabungkan semua row
					siswaList.forEach((d) => {
						let badge = d.status === 'Menunggu Konfirmasi' ? 'warning' :
							d.status === 'Diterima' ? 'success' :
							'danger';

						rows += `
                        <tr>
                            <td>
                                ${d.nama_siswa}<br>
                                <span class="text-small">Kelas ${d.kelas} ${d.jurusan}</span>
                            </td>
                            <td>${d.tanggal_izin_formatted}</td>
                            <td><span class="badge badge-rounded badge-${d.type === 'Sakit' ? 'danger' : 'success'}">${d.type}</span></td>
                            <td><span class="badge badge-rounded badge-${badge}">${d.status}</span></td>
                            <td>
                                <button idizin="${d.id}" class="btn-sm btn btn-primary detailizin" data-toggle="modal" data-target="#modalketerangan">Lihat Detail</button>
                            </td>
                        </tr>
                    `;
					});

					tbody.html(rows); // Tambahkan semua rows ke tabel
				} else {
					alert("Gagal memuat data siswa: " + response.message);
				}
			},
			error: function() {
				alert("Terjadi kesalahan saat memuat data siswa.");
			}
		});
	}

	$(document).on('click', '.detailizin', function() {
		let idizin = $(this).attr('idizin');
		console.log("ID Izin:", idizin);

		if (!idizin) {
			console.error("ID Izin tidak ditemukan.");
			return;
		}

		$.ajax({
			type: 'POST',
			url: "<?php echo base_url(); ?>ajax/tampilizin",
			data: {
				idizin: idizin
			},
			dataType: 'json',
			success: function(data) {
				console.log("Data diterima:", data);

				if (data.status != 'Menunggu Konfirmasi') {
					$('.buttonsubmit').hide();
					$('.buttonnya').html(
						`<p class="badge badge-secondary">Permintaan Izin Ini sudah ${data.status}</p>`
					);
				}

				$('.modal-title').html(`Data Izin ${data.nama_siswa}`);
				$('#keterangan_izin').html(`${data.keterangan}`);
				$('.bukti_izin').html(
					`<img src="<?= base_url() ?>assets/images/izinsiswa/${data.file_bukti}" width="200px" height="200px">`
				);

				$('#id_izin').val(idizin);
				$('#nis').val(data.nis_siswa);
				$('#kodekelas').val(data.kode_kelas);
				$('#tanggal').val(data.tanggal_izin);
				$('#tanggalizin').val(data.tanggal_indonesia);
			},
			error: function(xhr, status, error) {
				console.error("AJAX Error:", status, error);
				$('.modal-body').html('Kesalahan system');
			}
		});
	});


	$('.tolakizin').click(function(e) {
		e.preventDefault();

		var formData = new FormData($("#formIzin")[0]);
		var kelas = formData.get("kelas");
		var bulan = formData.get("bulan");

		$('.untukloading').html('<img src="<?= base_url('assets/img/loading.gif') ?>">');
		$('.formdetailizin').hide();
		$.ajax({
			type: 'POST',
			url: "<?php echo base_url(); ?>ajax/konfirmasi_izin",
			data: {
				idizin: $('#id_izin').val(),
				aksi: 'Ditolak'
			},
			dataType: 'json',
			success: function(data) {
				console.log(data);
				// Menampilkan pesan atau memperbarui elemen
				if (data.status === 'success') {
					$('.modal-body').html('<p class="badge badge-success">Izin diterima!</p>');

					if (kelas != null || bulan != null) {
						searchIzin();
					} else {
						initIzin();
					}

					// Opsional: Anda bisa menyembunyikan modal atau melakukan tindakan lainnya
					setTimeout(function() {
						$('#modalketerangan').modal('hide');
						// Lakukan pembaruan lain sesuai kebutuhan
					}, 1000); // Tutup modal setelah 2 detik
				} else {
					$('.modal-body').html('<p class="badge badge-danger">Terjadi kesalahan!</p>');
				}
			},
			error: function() {
				$('.modal-body').html('Kesalahan system')
			}
		});

	})

	$('.izinkan').click(function(e) {
		e.preventDefault();

		var formData = new FormData($("#formIzin")[0]);
		var kelas = formData.get("kelas");
		var bulan = formData.get("bulan");

		$('.untukloading').html('<img src="<?= base_url('assets/img/loading.gif') ?>">');
		$('.formdetailizin').hide();

		$.ajax({
			type: 'POST',
			url: "<?php echo base_url(); ?>ajax/konfirmasi_izin",
			data: {
				idizin: $('#id_izin').val(),
				aksi: 'Diterima'
			},
			dataType: 'json',
			success: function(data) {

				console.log(data);
				// Menampilkan pesan atau memperbarui elemen
				if (data.status === 'success') {
					$('.modal-body').html('<p class="badge badge-success">Izin diterima!</p>');

					if (kelas != null || bulan != null) {
						searchIzin();
					} else {
						initIzin();
					}

					// Opsional: Anda bisa menyembunyikan modal atau melakukan tindakan lainnya
					setTimeout(function() {
						$('#modalketerangan').modal('hide');
						// Lakukan pembaruan lain sesuai kebutuhan
					}, 1000); // Tutup modal setelah 2 detik
				} else {
					$('.modal-body').html('<p class="badge badge-danger">Terjadi kesalahan!</p>');
				}
			},
			error: function() {
				$('.modal-body').html('Kesalahan sistem');
			}
		});
	});
</script>
