<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_join extends CI_Model
{
	public $CI;
		function __construct()
		{
			parent:: __construct();
			$CI = &get_instance();
			$this->db = $CI->load->database('default', TRUE);
			$this->db2 = $CI->load->database('absensi', TRUE);
			$this->db3 = $CI->load->database('kegiatan', TRUE);
			$this->db4 = $CI->load->database('kinerja', TRUE);
		}
	                                        
}

 ?>