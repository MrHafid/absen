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


	<div class="col-xl-12 mt-5">
		<div class="row">
			<div class="col-12 ">
				<div class="card">
					<div class="card-header">
						<h4>Cari Kelas</h4>
					</div>
					<div class="card-body">
						<form action="" method="get" class="form-horizontal">
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
							</div>
							<div class="form-actions">
								<button type="submit" name="pencarian" value="isset" class="btn-sm btn btn-secondary"> <i class="flaticon-381-search-1"></i> Cari Kelas</button>

							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Penilaian Siswa</h4>
				<button type="button" class="btn-sm btn btn-info"> <i class="flaticon-381-add" data-bs-toggle="modal" data-bs-target="#addDataModal"></i></button>
			</div>
			<div class="card-body">
				<table class="table table-responsive display min-w850" id="tableSiswa">
					<thead>
						<tr>
							<th>No</th>
							<th>Nama</th>
							<th>Sering Menjawab</th>
							<th>Sering Bertanya</th>
							<th>Melakukan Kegiatan</th>
							<th>Terlambat</th>
							<th>Tidur</th>
							<th>Tidak Mendengarkan</th>
							<th>Total Keaktifan</th>
							<th>Total Sikap</th>
							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Bambang</td>
							<td><input type="number" class="form-control input-value" data-field="sering_menjawab" value="5"></td>
							<td><input type="number" class="form-control input-value" data-field="sering_bertanya" value="3"></td>
							<td><input type="number" class="form-control input-value" data-field="membantu_guru" value="2"></td>
							<td><input type="number" class="form-control input-value" data-field="terlambat" value="1"></td>
							<td><input type="number" class="form-control input-value" data-field="tidur" value="0"></td>
							<td><input type="number" class="form-control input-value" data-field="tidak_mendengarkan" value="0"></td>
							<td><input type="number" class="form-control input-value" data-field="total_keaktifan" value="0"></td>
							<td><input type="number" class="form-control input-value" data-field="total_sikap" value="0"></td>
							<td>
								<button class="btn btn-success btn-sm save-row" data-id="1">Simpan</button>
							</td>
						</tr>
						<!-- Baris lain akan mengikuti pola ini -->
					</tbody>
				</table>


			</div>
		</div>
	</div>
</div>



<!-- <script>
	var table = $('#tableSiswa').DataTable();
	$('#tableSiswa tbody').on('click', 'tr', function() {
		var data = table.row(this).data();
	});
</script> -->