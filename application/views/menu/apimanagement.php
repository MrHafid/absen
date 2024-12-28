<div class="content-body">
    <div class="container-fluid">
        <div class="page-titles">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="javascript:void(0)">Menu</a></li>
                <li class="breadcrumb-item active"><a href="javascript:void(0)">API Management</a></li>
            </ol>
        </div>
        <!-- row -->
        <?php if ($this->session->flashdata('flash')) : ?>
            <div class="alert alert-<?= $this->session->flashdata('flash')['alert'] ?> alert-dismissible alert-alt fade show my-4 mx-5">
                <button type="button" class="close h-100" data-dismiss="alert" aria-label="Close"><span><i class="mdi mdi-close"></i></span>
                </button>
                <strong><?= $this->session->flashdata('flash')['alert'] ?>!</strong> <?= $this->session->flashdata('flash')['message']; ?>.
            </div>
        <?php endif; ?>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">API Management</h4>
                    </div>
                    <div class="card-body">
                        <button type="submit" class="btn-sm btn btn-primary " data-toggle="modal" data-target="#tambah"> <i class="flaticon-381-add-2"> </i> Tambah</button>
                        <div class="table-responsive">

                            <table class="table table-responsive-md">
                                <thead>
                                    <tr>
                                        <th class="width80">ID</th>
                                        <th>Api key</th>
                                        <th>Nomer WA Gateway</th>
                                        <th>Url</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $api = $this->db->get('tabel_api');
                                    foreach ($api->result_array() as $getapi) : ?>
                                        <tr>
                                            <td><?php echo $getapi['id_api']; ?></td>
                                            <td><span class="badge light badge-success"><?php echo $getapi['api_key']; ?></span></td>
                                            <td><?php echo $getapi['sender']; ?></td>
                                            <td><span class="badge light badge-primary"><?php echo $getapi['url']; ?></span></td>
                                            <td>
                                                <a href="<?php echo base_url('menu/hapussubmenu/' . $getapi['id_api']) ?>">Delete</a> | <button data-toggle="modal" data-target="#ubah<?= $getapi['id_api']; ?>">Edit</button>
                                            </td>
                                        </tr>
                                </tbody>
                            <?php endforeach; ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!---Modal Tambah-->
<div class="modal fade" id="tambah">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"><?php echo $titletambah; ?></h5>
                <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?php echo base_url('menu/Tambah_api'); ?>">
                    <input type="hidden" name="<?= $this->security->get_csrf_token_name() ?>" value="<?= $this->security->get_csrf_hash(); ?>" id="">
                    <div class=" form-group">
                        <label>Api Key</label>
                        <input type="text" name="api_key" class="form-control input-rounded" placeholder="input-apikey" required>
                    </div>
                    <div class=" form-group">
                        <label>Sender</label>
                        <input type="text" name="sender" class="form-control input-rounded" placeholder="Contoh : 62812312312" required>
                    </div>
                    <div class=" form-group">
                        <label>Url</label>
                        <input type="text" name="url" class="form-control input-rounded" placeholder="Masukan EndPoint Api WAGateway" required>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-danger light" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<!---Modal Edit-->

<?php
$api = $this->db->get('tabel_api');
foreach ($api->result_array() as $getapi) : ?>
    <div class="modal fade" id="ubah<?= $getapi['id_api']; ?>">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><?php echo $titleedit; ?></h5>
                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="<?php echo base_url('menu/editapi'); ?>">
                        <input type="hidden" name="<?= $this->security->get_csrf_token_name() ?>" value="<?= $this->security->get_csrf_hash(); ?>" id="">
                        <div class="form-group">
                            <label>ID</label>
                            <input type="text" name="id" class="form-control input-default " placeholder="input-default" value="<?php echo $getapi['id_api']; ?>" readonly>
                        </div>
                        <div class=" form-group">
                            <label>Api Key</label>
                            <input type="text" name="api_key" class="form-control input-rounded" value="<?= $getapi['api_key'] ?>" placeholder="input-apikey" required>
                        </div>
                        <div class=" form-group">
                            <label>Sender</label>
                            <input type="text" name="sender" class="form-control input-rounded" value="<?= $getapi['sender'] ?>" placeholder="Contoh : 62812312312" required>
                        </div>
                        <div class=" form-group">
                            <label>Url</label>
                            <input type="text" name="url" class="form-control input-rounded" value="<?= $getapi['url'] ?>" placeholder="Masukan EndPoint Api WAGateway" required>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-danger light" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success">ubah</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
<?php endforeach; ?>