<?php 

class Mbranch extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	
	function existbranchname($name){
		$this->db->where(COL_BRANCHNAME, $name);
		$data = $this->db->get(TBL_BRANCHES)->result_array();
		if(count($data) > 0){
			return true;
		}else{
			return false;
		}
	}

	function addbranch($data){
		if(!empty($data)){
			$this->db->insert(TBL_BRANCHES, $data);
			return true;
		}else{
			return false;
		}
	}

	function updatebranch($data, $id){
		if($id && count($data) > 0){
			$this->db->where(COL_BRANCHID, $id);
			$this->db->update(TBL_BRANCHES, $data);
			return true;
		}else{
			return false;
		}
	}

	function getallbranch(){
		return $this->db->get(TBL_BRANCHES)->result_array();
	}

	function getbranch($id){
		$this->db->where(COL_BRANCHID, $id);
		$data = $this->db->get(TBL_BRANCHES)->row();
		return $data;
	}

	function deletebranch($id){
		if($id){
			$this->db->where(COL_BRANCHID, $id);
			if($this->db->delete(TBL_BRANCHES)){
				return true;
			}else{
				return false;
			}
		}
	}


}