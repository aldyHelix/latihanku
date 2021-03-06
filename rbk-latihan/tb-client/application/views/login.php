<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Sistem Informasi Kinerja Pegawai</title>
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="<?php echo base_url('assets/img/metis-tile.png')?>" />
    <link rel="stylesheet" href="<?php echo base_url('assets/lib/bootstrap/css/bootstrap.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/css/main.css')?>">
    <link rel="stylesheet" href="<?php echo base_url('assets/lib/magic/magic.css')?>">
  </head>
  <body class="login">
    <div class="container">
      <div class="text-center">
        <img src="<?php echo base_url('assets/img/logo.png" alt="Metis Logo'); ?>">
      </div>
      <div class="tab-content">
        <div id="login" class="tab-pane active">
          <form action="index.html" class="form-signin">
            <p class="text-muted text-center">
              Masukkan Nip dan Password anda
            </p>
            <input type="text" placeholder="NIP" class="form-control">
            <input type="password" placeholder="Password" class="form-control">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
          </form>
        </div>
        <div id="forgot" class="tab-pane">
          <form action="index.html" class="form-signin">
            <p class="text-muted text-center">Masukkan E-Mail yang valid!</p>
            <input type="email" placeholder="mail@domain.com" required="required" class="form-control">
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit">Kembalikan Password</button>
          </form>
        </div>
      </div>
      <div class="text-center">
        <ul class="list-inline">
          <li> <a class="text-muted" href="#login" data-toggle="tab">Login</a>  </li>
          <li> <a class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a>  </li>
          <li><a href="<?php echo base_url(); ?>index.php/Checkin_absen">cek in</a></li>
        </ul>
      </div>
    </div><!-- /container -->
    <script src="<?php echo base_url('assets/lib/jquery.min.js'); ?>"></script>
    <script src="<?php echo base_url('assets/lib/bootstrap/js/bootstrap.js'); ?>"></script>
    <script>
      $('.list-inline li > a').click(function() {
        var activeForm = $(this).attr('href') + ' > form';
        //console.log(activeForm);
        $(activeForm).addClass('magictime swap');
        //set timer to 1 seconds, after that, unload the magic animation
        setTimeout(function() {
          $(activeForm).removeClass('magictime swap');
        }, 1000);
      });
    </script>
  </body>
</html>
