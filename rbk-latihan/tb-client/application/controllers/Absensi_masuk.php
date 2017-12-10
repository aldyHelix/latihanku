<?php
Class Absensi_masuk extends CI_Controller{
    
    var $API ="";
    
    function __construct() {
        parent::__construct();
        $this->API="http://localhost/latihanku/rbk-latihan/tb-server/index.php";
    }
    
    // menampilkan data mahasiswa
    function index(){
        $data['absensi_masuk'] = json_decode($this->curl->simple_get($this->API.'/absensi_masuk'));
        $this->load->view('dashboard/admin/list_absen',$data);
    }       

}
?>