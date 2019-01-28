<?php

class MDivision extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	
	function existdivisionname($name){
		$this->db->where(COL_DIVISIONNAME, $name);
		$data = $this->db->get(TBL_DIVISIONS)->result_array();
		if(count($data) > 0){
			return true;
		}else{
			return false;
		}
	}

	function adddivision($data){
		if(!empty($data)){
			$this->db->insert(TBL_DIVISIONS, $data);
			return true;
		}else{
			return false;
		}
	}

	function updatedivision($data, $id){
		if($id && count($data) > 0){
			$this->db->where(COL_DIVISIONID, $id);
			$this->db->update(TBL_DIVISIONS, $data);
			return true;
		}else{
			return false;
		}
	}

	function getalldivision(){
		return $this->db->get(TBL_DIVISIONS)->result_array();
	}

	function getdivision($id){
		$this->db->where(COL_DIVISIONID, $id);
		$data = $this->db->get(TBL_DIVISIONS)->row();
		return $data;
	}

	function deletedivision($id){
		if($id){
			$this->db->where(COL_DIVISIONID, $id);
			if($this->db->delete(TBL_DIVISIONS)){
				return true;
			}else{
				return false;
			}
		}
	}

}