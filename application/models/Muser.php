<?php

class Muser extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getuserdata($id = ''){
		if(!empty($id)){
			$this->db->where(COL_USERNAME, $id);
		}

		$data = $this->db->get(TBL_USERS)->result();
		return $data;
	}

	public function getsingleuserdata($id){
		if(!empty($id)){
			$this->db->where(COL_USERNAME, $id);
			$data = $this->db->get(TBL_USERS)->row();
			if($data){
				return $data;
			}
			
		}
	}
}