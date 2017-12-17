<?php echo $this->session->flashdata('hasil'); ?>
<br>
<a href="<?php echo base_url(); ?>index.php/kegiatan/view_input">Create</a>
<br>
<table>
    <tr>
      <th>No</th>
      <th>ID KEGIATAN</th>
      <th>NAMA KEGIATAN</th>
      <th>WAKTU KEGIATAN</th>
      <th>TEMPAT KEGIATAN</th>
      <th>SIFAT KEGIATAN</th>
      <th>AKSI</th></tr>
    <?php
    foreach ($kegiatan as $kg){
        echo "<tr>
              <td>$kg->no</td>
              <td>$kg->id_kegiatan</td>
              <td>$kg->nama_kegiatan</td>
              <td>$kg->waktu_kegiatan</td>
              <td>$kg->tempat_kegiatan</td>
              <td>$kg->sifat_kegiatan</td>
              <td>".anchor('kegiatan/edit/'.$kg->id_kegiatan,'Edit')."
                  ".anchor('kegiatan/delete/'.$kg->no,'Delete')."</td>
              </tr>";
    }
    ?>
</table>