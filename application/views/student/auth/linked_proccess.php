<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iofrm</title>
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/') ?>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/') ?>css/fontawesome-all.min.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/') ?>css/iofrm-style.css">
    <link rel="stylesheet" type="text/css" href="<?= base_url('assets/') ?>css/iofrm-theme16.css">
</head>

<body>
    <div class="form-body without-side">
        <div class="website-logo">
            <a href="index.html">
                <div class="logo">
                    <img class="logo-size" src="<?= base_url('assets/') ?>images/logo-light.svg" alt="">
                </div>
            </a>
        </div>
        <div class="row">
            <div class="img-holder">
                <div class="bg"></div>
                <div class="info-holder">
                    <img src="<?= base_url('assets/') ?>images/graphic3.svg" alt="">
                </div>
            </div>
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Pengaktifan akun</h3>
                        <p>Hai <?= $datasiswa['nama_siswa'] ?>, Silahkan buat email dan password untuk akun anda.</p>
                        <form action="<?php echo base_url(); ?>student/auth/linked_proccess" method="GET">
                            <input class="form-control nis" type="hidden" id="nis" name="nis" value="<?= $this->input->get('nis') ?>" placeholder="E-mail Address" required>
                            <input class="form-control email" type="text" id="email" name="email" placeholder="E-mail Address" required>
                            <div class="infoemail"></div>
                            <input class="form-control password" type="password" id="password" name="password" placeholder="Password baru" required>
                            <a class="infopassword"></a>
                            <input class="form-control password2" type="password" id="password2" name="password2" placeholder="Konfirmasi Password baru" required>
                            <div class="infopassword2"></div>
                            <div class="form-button full-width">
                                <button id="submit" name="kirim" value="2321" type="submit" class="ibtn btn-forget">Konfirmasi Password</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="<?= base_url('assets/') ?>js/jquery.min.js"></script>
    <script src="<?= base_url('assets/') ?>js/popper.min.js"></script>
    <script src="<?= base_url('assets/') ?>js/bootstrap.min.js"></script>
    <script src="<?= base_url('assets/') ?>js/main.js"></script>
    
</body>

</html>
