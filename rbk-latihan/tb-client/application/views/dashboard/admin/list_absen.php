<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Teknik Informatika UMM">
  <meta name="author" content="REST CLIENT">
<!-- core CSS -->
  <link href="<?php echo base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?php echo base_url() ?>assets/css/dataTables.bootstrap.css" rel="stylesheet">
  <link href="<?php echo base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">

  <script src="<?php echo base_url() ?>assets/js/jquery-1.11.0.js"></script>
  <script src="<?php echo base_url() ?>assets/js/bootstrap.min.js"></script>
  <script src="<?php echo base_url() ?>assets/datatables/jquery.dataTables.js"></script>
  <script src="<?php echo base_url() ?>assets/datatables/dataTables.bootstrap.js"></script>
</head>
 <body>
<?php echo $this->session->flashdata('hasil'); ?>
<div class="container">
    <table class="table table-bordered">
        <thead>
            <tr>
                <th width="10%">NO</th>
                <th width="15%">NIP</th>
                <th width="15%">WAKTU MASUK</th>
                <th width="15%">Aksi</th>
            </tr>
        </thead>
        <?php foreach ($absensi_masuk as $ab) :?>
            <tr>
              <td width="10%"><?php echo $ab->no; ?></td>
              <td width="15%"><?php echo $ab->nip; ?></td>
              <td width="15%"><?php echo $ab->waktu_absen; ?></td>
            </tr>

        <?php endforeach; ?>

</body>