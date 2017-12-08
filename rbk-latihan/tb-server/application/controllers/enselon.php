<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class enselon extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_kinerja');
    }

    //Menampilkan data kontak
    function index_get() {
        $kode_enselon = $this->get('kode_enselon');
        $response = array(
            $this->Model_kinerja->pull_all('enselon')->result(),
        );
        $this->response($response, 200);
    }

}
?>