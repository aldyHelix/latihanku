<?php
Class Kegiatan extends CI_Controller{
    
    var $API ="";
    
    function __construct() {
        parent::__construct();
        $this->API="http://localhost/latihanku/rbk-latihan/tb-server/index.php";
    }
    
    // menampilkan data mahasiswa
    function index(){
        $data['kegiatan'] = json_decode($this->curl->simple_get($this->API.'/kegiatan'));
        $this->load->view('dashboard/kegiatan/list',$data);
    }
    function view_input(){
      $this->load->view('dashboard/kegiatan/create');  
    }
    
    // insert data mahasiswa
    function create(){
            $data = array(
                'id_kegiatan'        =>  $this->input->post('id_kegiatan'),
                'nama_kegiatan'      =>  $this->input->post('nama_kegiatan'),
                'waktu_kegiatan'     =>  $this->input->post('waktu_kegiatan'),
                'tempat_kegiatan'    =>  $this->input->post('tempat_kegiatan'),
                'sifat_kegiatan'     =>  $this->input->post('sifat_kegiatan')
            );
            $insert =  $this->curl->simple_post($this->API.'/kegiatan', $data, array(CURLOPT_BUFFERSIZE => 10)); 
            if($insert)
            {
                $this->session->set_flashdata('hasil','Insert Data Berhasil');
            }else
            {
               $this->session->set_flashdata('hasil','Insert Data Gagal');
            }
            redirect('kegiatan');
    }
    
    // edit data mahasiswa
    function edit(){
        if(isset($_POST['submit'])){
            $data = array(
                'id_kegiatan'        =>  $this->input->post('id_kegiatan'),
                'nama_kegiatan'      =>  $this->input->post('nama_kegiatan'),
                'waktu_kegiatan'     =>  $this->input->post('waktu_kegiatan'),
                'tempat_kegiatan'    =>  $this->input->post('tempat_kegiatan'),
                'sifat_kegiatan'     =>  $this->input->post('sifat_kegiatan')
            );
            $update =  $this->curl->simple_put($this->API.'/kegiatan', $data, array(CURLOPT_BUFFERSIZE => 10)); 
            if($update)
            {
                $this->session->set_flashdata('hasil','Update Data Berhasil');
            }else
            {
               $this->session->set_flashdata('hasil','Update Data Gagal');
            }
            redirect('kegiatan');
        }
    }
    
    // delete data mahasiswa
    function delete($no){
        if(empty($no)){
            redirect('kegiatan');
        }else{
            $delete =  $this->curl->simple_delete($this->API.'/kegiatan', array('no'=>$no), array(CURLOPT_BUFFERSIZE => 10)); 
            if($delete)
            {
                $this->session->set_flashdata('hasil','Delete Data Berhasil');
            }else
            {
               $this->session->set_flashdata('hasil','Delete Data Gagal');
            }
            redirect('kegiatan');
        }
    }
}