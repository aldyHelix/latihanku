<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class pegawai extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->database();
    }

    //Menampilkan data kontak
    function index_get() {
        $nip = $this->get('nip');
        if ($nip == '') {
            $dtpeg = $this->db->get('data_pegawai')->result();
        } else {
            $this->db->where('nip', $nip);
            $dtpeg = $this->db->get('data_pegawai')->result();
        }
        $this->response($dtpeg, 200);
    }


    //Masukan function selanjutnya disini
    function index_post(){
    	$data =  array(
    			'nip'		=>$this->post('nip'),
    			'nama'		=>$this->post('nama'),
    			'alamat'	=>$this->post('alamat'),
    			'jabatan'	=>$this->post('jabatan')
    	);
    	$insert = $this->db->insert('data_pegawai', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }

    function index_put(){
    	$nip = $this->put('nip');
    	$data =  array(
    			'nip'		=>$this->put('nip'),
    			'nama'		=>$this->put('nama'),
    			'alamat'	=>$this->put('alamat'),
    			'jabatan'	=>$this->put('jabatan')
    	);
    	$this->db->where('nip', $nip);
    	$update = $this->db->update('data_pegawai', $data);
    	if($update){
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail', 502));         
    	}
    }
    function index_delete(){
    	$nip = $this->delete('nip');
    	$this->db->where('nip', $nip);
    	$delete = $this->db->delete('data_pegawai');
    	if($delete){
    		$this->response(array('status' => 'success'), 201);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>