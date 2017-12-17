<?php $this->load->view('dashboard/header') ?>
<?php $this->load->view('dashboard/admin/left_menu') ?>
<?php echo $this->session->flashdata('hasil'); ?>
      <div id="content">
        <div class="outer">
          <div class="inner">
<!--Begin Datatables-->
            <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Data Absensi</h5>
                  </header>
                  <div id="collapse4" class="body">
                    <table id="dataTable" class="table table-bordered table-condensed table-hover table-striped">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Nip</th>
                          <th>Nama</th>
                          <th>Waktu Masuk</th>
                          <th>Aksi</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php foreach ($absensi_masuk as $ab) :?>
                          <tr>
                            <td width="10%"><?php echo $ab->no; ?></td>
                            <td width="15%"><?php echo $ab->nip; ?></td>
                            <td> </td>
                            <td width="15%"><?php echo $ab->waktu_absen; ?></td>
                            <td> </td>
                            <?php endforeach; ?>
                          </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->
          </div>
        </div>
      </div>
            <!--End Datatables-->
<?php $this->load->view('dashboard/footer') ?>