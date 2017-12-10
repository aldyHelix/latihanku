<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class absensi_masuk extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_absensi');
        $this->load->helper('date');
    }

    //Menampilkan data kontak
    function index_get() {
        $nip = $this->get('nip');
        $response = $this->Model_absensi->pull_join('absen_masuk', 'inner')->result();

        $this->response($response, 200);
    }

    function index_post(){
    	$waktu =  date(DATE_ISO8601, time());
    	$data = array(
    			'nip' =>$this->post('nip'),
    			'waktu_absen' =>$waktu
    	);
    	$insert = $this->Model_absensi->add('absen_masuk', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>