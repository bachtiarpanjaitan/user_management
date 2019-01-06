<?php

class Mexpense extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	
	function existexpensetypename($name){
		$this->db->where(COL_EXPENSETYPENAME, $name);
		$data = $this->db->get(TBL_EXPENSETYPES)->result_array();
		if(count($data) > 0){
			return true;
		}else{
			return false;
		}
	}

	function addexpensetype($data){
		if(!empty($data)){
			$this->db->insert(TBL_EXPENSETYPES, $data);
			return true;
		}else{
			return false;
		}
	}

	function updateexpensetype($data, $id){
		if($id && count($data) > 0){
			$this->db->where(COL_EXPENSETYPEID, $id);
			$this->db->update(TBL_EXPENSETYPES, $data);
			return true;
		}else{
			return false;
		}
	}

	function getallexpensetype(){
		return $this->db->get(TBL_EXPENSETYPES)->result_array();
	}

	function getexpensetype($id){
		$this->db->where(COL_EXPENSETYPEID, $id);
		$data = $this->db->get(TBL_EXPENSETYPES)->row();
		return $data;
	}

	function deleteexpensetype($id){
		if($id){
			$this->db->where(COL_EXPENSETYPEID, $id);
			if($this->db->delete(TBL_EXPENSETYPES)){
				return true;
			}else{
				return false;
			}
		}
	}

}