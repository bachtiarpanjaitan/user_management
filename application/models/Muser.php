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

	public function getroles(){
		return $this->db->get(TBL_ROLES)->result_array();
	}

	public function saveuser($data){
		if(!empty($data)){
			$this->db->insert(TBL_USERS, $data);
			return true;
		}else{
			return false;
		}
	}

	public function saveuserinformation($data){
		if(!empty($data)){
			$this->db->insert('userinformations', $data);
			return true;
		}else{
			return false;
		}
	}

	public function updateuser($data,$id){
		if(!empty($data) && !empty($id)){
			$this->db->where(COL_USERNAME, $id);
			$this->db->update(TBL_USERS, $data);
			return true;
		}else{
			return false;
		}
	}
	public function updateuserinformation($data,$id){
		if(!empty($data) && !empty($id)){
			$this->db->where(COL_USERNAME, $id);
			$this->db->update('userinformations', $data);
			return true;
		}else{
			return false;
		}
	}
}