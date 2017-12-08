<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_kegiatan extends CI_Model
{
	public $CI;
		function __construct()
		{
			parent:: __construct();
			$CI = &get_instance();
			$this->db = $CI->load->database('kegiatan', TRUE);
		}

	public function add($table, $data)
	{
		return $this->db->insert($table, $data);
	}
	public function pull_all($table){
		return $this->db->get($table);
	}
	public function check($table, $where = '')
	{
		/* mereturn 0 || > 0 */
		if (!empty($where)) {
			$this->db->where($where);
		}
		return $this->db->get($table)->num_rows();
	}
	public function pull($table, $where = '', $order_by = '')
	{
		if (!empty($where)) {
			$this->db->where($where);
		}
        if (!empty($order_by)) {
            $this->db->order_by($order_by['col'], $order_by['type']);
        }
		return $this->db->get($table);
	}
	public function pull_order($table, $order_by = '')
	{
        if (!empty($order_by)) {
            $this->db->order_by($order_by);
        }
		return $this->db->get($table);
	}

	public function pull_select($select, $table, $where = '')
	{
		$this->db->select($select);
		if(!empty($where))
			$this->db->where($where);
		return $this->db->get($table);
	}
	public function pull_group($table, $where = '', $group)
	{
		if(!empty($where))
			$this->db->where($where);
		$this->db->group_by($group);
		return $this->db->get($table);
	}
	public function pull_like($table, $where, $like)
	{
		return $this->db->like($like['col'], $like['match'], (empty($like['pos']) ? 'both' : $like['pos']))->where($where)->get($table);
	}
	public function pull_join($select = '', $table, $where = '', $joinTableCond)
	{
		if (!empty($select)) {
			$this->db->select($select);
		}
		foreach ($joinTableCond as $jt) {
			if (empty($jt['type'])) $this->db->join($jt['table'], $jt['cond']); else $this->db->join($jt['table'], $jt['cond'], $jt['type']);
		}
		if (!empty($where)) {
			$this->db->where($where);
		}
		return $this->db->get($table);
	}
	public function edit($table, $data, $where)
	{
		$this->db->where($where);
		return $this->db->update($table, $data);
	}
	public function remove($table, $where)
	{
		$this->db->where($where);
		return $this->db->delete($table);
	}
}

 ?>