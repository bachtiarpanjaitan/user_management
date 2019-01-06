<?php

class Mtraining extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	
	function existtrainingtypename($name){
		$this->db->where(COL_TRAININGTYPENAME, $name);
		$data = $this->db->get(TBL_TRAININGTYPES)->result_array();
		if(count($data) > 0){
			return true;
		}else{
			return false;
		}
	}

	function addtrainingtype($data){
		if(!empty($data)){
			$this->db->insert(TBL_TRAININGTYPES, $data);
			return true;
		}else{
			return false;
		}
	}

	function updatetrainingtype($data, $id){
		if($id && count($data) > 0){
			$this->db->where(COL_TRAININGTYPEID, $id);
			$this->db->update(TBL_TRAININGTYPES, $data);
			return true;
		}else{
			return false;
		}
	}

	function getalltrainingtype(){
		return $this->db->get(TBL_TRAININGTYPES)->result_array();
	}

	function gettrainingtype($id){
		$this->db->where(COL_TRAININGTYPEID, $id);
		$data = $this->db->get(TBL_TRAININGTYPES)->row();
		return $data;
	}

	function deletetrainingtype($id){
		if($id){
			$this->db->where(COL_TRAININGTYPEID, $id);
			if($this->db->delete(TBL_TRAININGTYPES)){
				return true;
			}else{
				return false;
			}
		}
	}

}