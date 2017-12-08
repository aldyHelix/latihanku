<?php

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class unit extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model('Model_kinerja');
    }

    //Menampilkan data kontak
    function index_get() {
        $kode_unit = $this->get('kode_unit');
        $response = array(
            $this->Model_kinerja->pull_all('unit_kerja')->result(),
        );
        $this->response($response, 200);
    }

}
?>