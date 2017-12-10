<?php
Class Checkin_absen extends CI_Controller{
    
    var $API ="";
    
    function __construct() {
        parent::__construct();
        $this->API="http://localhost/latihanku/rbk-latihan/tb-server/index.php";
        $this->load->helper('url');
    }
    
    // menampilkan data mahasiswa
    function index(){
        $this->load->view('dashboard/client/checkin_absen');
    }       

}
?>