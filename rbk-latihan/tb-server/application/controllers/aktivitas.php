<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class aktivitas extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_kinerja');
    }

    //Menampilkan data kontak
    function index_get() {
        $id_aktivitas = $this->get('id_aktivitas');
        $response = array(
            $this->Model_kinerja->pull_all('aktivitas')->result());

        $this->response($response, 200);
    }


    //Masukan function selanjutnya disini
    function index_post(){
    	$data =  array(
    			'id_aktivitas'		=>$this->post('id_aktivitas'),
                'tgl'               =>$this->post('tgl'),
    			'nib'               =>$this->post('nib'),
    			'nama_aktivitas'	=>$this->post('nama_aktivitas'),
    			'hasil'	            =>$this->post('hasil'),
                'commit'            =>$this->post('commit'),
                'approv'            =>$this->post('approv'),
                'durasi_aktivitas'  =>$this->post('durasi_aktivitas'),
                'id_dtl_skp'        =>$this->post('id_dtl_skp'),
                'nip'               =>$this->post('nip')

    	);
    	$insert = $this->Model_kinerja->add('aktivitas', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }

    function index_put(){
    	$id_aktivitas = $this->get('id_aktivitas');
        $data =  array(
                'id_aktivitas'      =>$this->post('id_aktivitas'),
                'tgl'               =>$this->post('tgl'),
                'nib'               =>$this->post('nib'),
                'nama_aktivitas'    =>$this->post('nama_aktivitas'),
                'hasil'             =>$this->post('hasil'),
                'commit'            =>$this->post('commit'),
                'approv'            =>$this->post('approv'),
                'durasi_aktivitas'  =>$this->post('durasi_aktivitas'),
                'id_dtl_skp'        =>$this->post('id_dtl_skp'),
                'nip'               =>$this->post('nip')

        );

    	$update = $this->Model_kinerja->edit('aktivitas', $data, $id_aktivitas);
    	if($update){
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail', 502));         
    	}
    }
    function index_delete(){
    	$id_aktivitas = $this->get('id_aktivitas');
    	$delete = $this->Model_kinerja->remove('aktivitas', $id_aktivitas);
    	if($delete){
    		$this->response(array('status' => 'success'), 201);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>