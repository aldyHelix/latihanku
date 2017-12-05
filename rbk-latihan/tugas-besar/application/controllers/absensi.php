<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class absensi extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Mdl_crud');
        $this->load->helper('date');
    }

    //Menampilkan data kontak
    function index_get() {
        $nip = $this->get('nip');
        $response = array(
            'absen_masuk' => $this->Mdl_crud->pull_all_pg('absen_masuk')->result(),
        	'absen_pulang' => $this->Mdl_crud->pull_all_pg('absen_pulang')->result());

        $this->response($response, 200);
    }

    function index_post(){
    	$waktu =  date(DATE_ISO8601, time());
    	$data = array(
    			'no' => $this->post('no'),
    			'nip' =>$this->post('nip'),
    			'waktu_absen' =>$waktu
    	);
    	$insert = $this->Mdl_crud->add_pg('absen_masuk', $data);
    	if ($insert) {
    		$this->response($data, 200);
    	} else {
    		$this->response(array('status' => 'fail' , 502));
    	}
    }
}
?>