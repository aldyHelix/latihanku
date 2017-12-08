<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class pegawai extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_pegawai');
    }

    //Menampilkan data kontak
    function index_get() {
        $nip = $this->get('nip');
        $response = array(
            $this->Model_pegawai->pull_all('pegawai')->result());

        $this->response($response, 200);
    }


    //Masukan function selanjutnya disini
    function index_post(){
    	$data =  array(
    			'nip'		=>$this->post('nip'),
    			'nama'		=>$this->post('nama'),
    			'gelar_depan'	=>$this->post('gelar_depan'),
    			'gelar_belakang'	=>$this->post('gelar_belakang'),
                'kode_jabatan'    =>$this->post('kode_jabatan'),
                'kode_golongan'    =>$this->post('kode_golongan'),
                'kode_unit'    =>$this->post('kode_unit'),
                'nip_atasan'    =>$this->post('nip_atasan')
    	);
    	$insert = $this->Model_pegawai->add('pegawai', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }

    function index_put(){
    	$nip = $this->put('nip');
        $data =  array(
                'nip'       =>$this->post('nip'),
                'nama'      =>$this->post('nama'),
                'gelar_depan'   =>$this->post('gelar_depan'),
                'gelar_belakang'    =>$this->post('gelar_belakang'),
                'kode_jabatan'    =>$this->post('kode_jabatan'),
                'kode_golongan'    =>$this->post('kode_golongan'),
                'kode_unit'    =>$this->post('kode_unit'),
                'nip_atasan'    =>$this->post('nip_atasan')
        );

    	$update = $this->Model_pegawai->edit('pegawai', $data, $nip);
    	if($update){
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail', 502));         
    	}
    }
    function index_delete(){
    	$nip = $this->delete('nip');
    	$delete = $this->Model_pegawai->remove('pegawai', 'nip');
    	if($delete){
    		$this->response(array('status' => 'success'), 201);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>