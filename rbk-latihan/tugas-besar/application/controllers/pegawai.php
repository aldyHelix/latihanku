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
    function post_peg(){
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
}
?>