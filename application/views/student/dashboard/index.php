	<!--**********************************
          Bagian  Content body start
        ***********************************-->

	<div class="modal fade" id="locationModal" tabindex="-1" aria-labelledby="locationModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="locationModalLabel">Lokasi Absen</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div id="map" style="height: 400px; width: 100%;"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>

	<div class="content-body">
		<!-- row -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12 col-xxl-12">
					<?php
					$jam = date("G");
					if ($jam >= 0 && $jam <= 11)
						$sapa = "Selamat Pagi";
					else if ($jam >= 12 && $jam <= 15)
						$sapa = "Selamat Siang";
					else if ($jam >= 16 && $jam <= 18)
						$sapa = "Selamat Sore";
					else if ($jam >= 19 && $jam <= 23)
						$sapa = "Selamat Malam";
					?>
					<?php

					if (count($cekliburweekend) > 0 && $cekliburweekend[0]['status'] == 'Aktif') {
						$sapaan = 'Hari ini adalah Weekend ' . hari_ini() . ' Tidak ada jadwal absen hari ini, Selamat liburan !';
						$liburr = 'ada';
					} else if ($cekliburnasional) {
						$tgl = date('Y-m-d');
						$keterangan = $this->db->query("SELECT * FROM tabel_libur WHERE tanggal = '$tgl' ")->result_array()[0];
						$sapaan = 'Hari ini adalah libur  ' . $keterangan['keterangan'] . ' Tidak ada jadwal absen hari ini, Selamat liburan !';
						$liburr = 'ada';
					} else {
						$liburr = 'tidak ada';
						$sapaan = 'Tidak ada libur hari ini ! semangat belajarnya dan jangan lupa absen ya!';
					}

					?>

					<div class="alert alert-primary alert-dismissible fade show">
						<svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
							<circle cx="12" cy="12" r="10"></circle>
							<path d="M8 14s1.5 2 4 2 4-2 4-2"></path>
							<line x1="9" y1="9" x2="9.01" y2="9"></line>
							<line x1="15" y1="9" x2="15.01" y2="9"></line>
						</svg>
						<strong>Hallo <?= $sapa . ' ' . $user['nama_siswa'] ?></strong> <?= $sapaan; ?>
						<button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
						</button>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-body">
									<a href="<?= base_url('student/izin') ?>" class="btn-sm btn btn-primary"> <i class="flaticon-381-notepad"></i> Izin tidak masuk</a>
									<a href="<?= base_url('student/data/face_presensi?type=in') ?>" class="flaticon-381-print-1 btn-sm btn btn-secondary"> Absen Masuk</a>
									<a href="<?= base_url('student/data/face_presensi?type=out') ?>" class="flaticon-381-print-1 btn-sm btn btn-info"> Absen Keluar</a>
								</div>
								<!-- <form action="<?= base_url('student/data/face_presensi') ?>" method="POST">
									<button class="flaticon-381-print-1 btn-sm btn btn-secondary" name="type" value="in" target="_blank"> Absen Masuk</button>
									<button class="flaticon-381-print-1 btn-sm btn btn-info" name="type" value="out" target="_blank"> Absen Keluar</button>
								</form> -->
							</div>
						</div>
						<div class="col-12">
							<div class="card">
								<div class="card-header ">
									<p class="card-title">Status Absen Hari ini <?= hari_ini() . ' ' . date('d') . ' ' . nama_bulan(date('m')) . ' ' . date('Y') ?> </p>
								</div>
								<div class="card-body table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th class="width80">No</th>
												<th class="">Jam Absen</th>
												<th class="">Tanggal</th>
												<th>Lokasi</th>
												<th>Tipe Absen</th>
												<th>Keterangan</th>
											</tr>
										</thead>
										<tbody>
											<?php if (!empty($presensi)) : ?>
												<?php $no = 1; ?>
												<?php foreach ($presensi as $row) : ?>
													<tr>
														<td><?= $no++; ?></td>
														<td><?= date('H:i', strtotime($row['jam_absen'])); ?></td>
														<td><?= date('d-m-Y', strtotime($row['tanggal_absen'])); ?></td>
														<td>
															<button class="btn btn-primary btn-sm btn-show-map"
																data-lat="<?= $row['lat']; ?>"
																data-lng="<?= $row['long']; ?>"
																data-bs-toggle="modal"
																data-bs-target="#locationModal">
																Lihat Lokasi
															</button>
														</td>
														<td>
															<?php if ($row['masuk'] == 1 && $row['keluar'] == 1): ?>
																<span class="badge light badge-success">Absen Selesai</span>
															<?php elseif ($row['masuk'] == 1): ?>
																<span class="badge light badge-success">Absen Masuk</span>
															<?php elseif ($row['keluar'] == 1): ?>
																<span class="badge light badge-info">Absen Keluar</span>
															<?php else: ?>
																<span class="badge light badge-danger">Belum Absen</span>
															<?php endif; ?>
														</td>
														<td><?= $row['keterangan']; ?></td>
													</tr>
												<?php endforeach; ?>
											<?php else : ?>
												<tr>
													<td colspan="12" class="text-center">Tidak ada data presensi</td>
												</tr>
											<?php endif; ?>
										</tbody>

									</table>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 col-lg-6 col-sm-12">
							<a href="<?= base_url('student/data/absen') ?>">
								<div class="widget-stat card bg-secondary">
									<div class="card-body  p-4">
										<div class="media">
											<span class="mr-3">
												<i class="la la-edit"></i>
											</span>
											<div class="media-body text-white">
												<h5 class="text-white">Jumlah Absen ( Bulan ini )</h5>
												<p>Izin : <?= $this->db->query("SELECT * FROM tabel_detail_absen WHERE nis = '$nis' AND tanggal_absen = '$tgl' AND keterangan = 'i' ")->num_rows()  ?> Sakit : <?= $this->db->query("SELECT * FROM tabel_detail_absen WHERE nis = '$nis' AND tanggal_absen = '$tgl' AND keterangan = 's' ")->num_rows()  ?> Alpha : <?= $this->db->query("SELECT * FROM tabel_detail_absen WHERE nis = '$nis' AND tanggal_absen = '$tgl' AND keterangan = 'a' ")->num_rows()  ?></p>


											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="col-xl-4 col-lg-6 col-sm-12">
							<a href="<?= base_url('student/data/libur') ?>">
								<div class="widget-stat card bg-secondary">
									<div class="card-body  p-4">
										<div class="media">
											<span class="mr-3">
												<i class="flaticon-381-id-card-4"></i>
											</span>
											<div class="media-body text-white">
												<?php
												$bulanini = date('Y-m');
												?>
												<h5 class="text-white">Data Libur ( Bulan ini )</h5>
												<p>Jumlah : <?= $this->db->query("SELECT * FROM tabel_libur WHERE tanggal LIKE '%$bulanini%' AND status = 'Aktif' ")->num_rows() ?></p>

											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
						<div class="col-xl-4 col-lg-6 col-sm-12">
							<a href="<?= base_url('student/izin/data') ?>">
								<div class="widget-stat card bg-secondary">
									<div class="card-body  p-4">
										<div class="media">
											<span class="mr-3">
												<i class="flaticon-381-repeat"></i>
											</span>
											<div class="media-body text-white">
												<h4 class="text-white">Data Izin</h4>
												<?php
												$nis = $user['nis_siswa'];
												$sqlcekizin = "SELECT * FROM tabel_izin WHERE nis_siswa = '$nis'";
												$jumlahizin = $this->db->query($sqlcekizin)->num_rows();
												?>
												<p>Total Izin : <?= $jumlahizin ?></p>
											</div>
										</div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>

	<!--**********************************
          Akhir  Content body end
        ***********************************-->