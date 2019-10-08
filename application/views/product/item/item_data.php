<!-- Content Header (Page header) -->
<section class="content-header">
  <h1>
    Items
    <small>Data Barang</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i></a></li>
    <li class="active">Items</li>
  </ol>
</section>

<!-- Main content -->
<section class="content">

<?php $this->view('messages'); ?>

  <div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">Data Product Items</h3>
        <div class="pull-right">
            <a href="<?= site_url('item/add'); ?>" class="btn btn-primary btn-flat">
               <i class="fa fa-plus"></i>Create Product Item
            </a>
        </div>
    </div>
    <div class="box-body table-responsive">
        <table class="table table-bordered table-striped" id="table1">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Barcode</th>
                    <th>Name</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $no = 1;
                foreach ($row->result() as $key => $data) { ?>
                <tr>
                    <td style="width:5%"><?= $no++; ?>.</td>
                    <td><?= $data->barcode; ?></td>
                    <td><?= $data->name; ?></td>

                    <td class="text-center" width="160px">
                        <a href="<?= site_url('item/edit/'.$data->item_id); ?>" class="btn btn-primary btn-xs">
                            <i class="fa fa-pencil"></i>Update
                        </a>
                        <a href="<?= site_url('item/del/'.$data->item_id); ?>" onclick="return confirm('Yakin hapus data?')" class="btn btn-danger btn-xs">
                            <i class="fa fa-trash"></i>Delete
                        </a>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
  </div>

</section>
<!-- /.content -->