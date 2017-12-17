<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class kegiatan extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_kegiatan');
    }

    //Menampilkan data kontak
    function index_get() {
        $id_kegiatan = $this->get('id_kegiatan');
        $response = $this->Model_kegiatan->pull_all('kegiatan')->result();

        $this->response($response, 200);
    }


    //Masukan function selanjutnya disini
    function index_post(){
    	$data =  array(
    			'id_kegiatan'		      =>$this->post('id_kegiatan'),
                'nama_kegiatan'         =>$this->post('nama_kegiatan'),
    			'waktu_kegiatan'		  =>$this->post('waktu_kegiatan'),
    			'tempat_kegiatan'	=>$this->post('tempat_kegiatan'),
    			'sifat_kegiatan'	=>$this->post('sifat_kegiatan')
    	);
    	$insert = $this->Model_kegiatan->add('kegiatan', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }

    function index_put(){
    	$no = $this->get('no');
        $data =  array(
                'id_kegiatan'             =>$this->post('id_kegiatan'),
                'nama_kegiatan'         =>$this->post('nama_kegiatan'),
                'waktu_kegiatan'          =>$this->post('waktu_kegiatan'),
                'tempat_kegiatan'   =>$this->post('tempat_kegiatan'),
                'sifat_kegiatan'    =>$this->post('sifat_kegiatan')
        );

    	$update = $this->Model_kegiatan->edit('kegiatan', $data, array('no' => $no));
    	if($update){
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail', 502));         
    	}
    }
    function index_delete(){
    	$no = $this->get('no');
    	$delete = $this->Model_kegiatan->remove('kegiatan', array('no' => $no));
    	if($delete){
    		$this->response(array('status' => 'success'), 201);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>