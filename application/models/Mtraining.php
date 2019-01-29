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

	function saveemployeetraining($data){
		if(!empty($data)){
			$this->db->insert(TBL_TRAININGS, $data);
			return true;
		}else{
			return false;
		}
	}

	function updateemployeetraining($data){
		if(!empty($data)){
			$this->db->where(COL_TRAININGID, $id);
			$this->db->update(TBL_TRAININGS, $data);
			return true;
		}else{
			return false;
		}
	}

	function gettraininginherit(){
		$this->db->select(
			'*',
			TBL_EMPLOYEETRAININGS.'.*',
			TBL_TRAININGTYPES.'.'.COL_TRAININGTYPENAME,
			TBL_DIVISIONS.'.'.COL_DIVISIONNAME,
			TBL_BRANCHES.'.'.COL_BRANCHNAME
		);
		$this->db->join(TBL_EMPLOYEETRAININGS.' et','et.'. COL_EMPLOYEETRAININGID.' = '. 't.'.COL_EMPLOYEETRAININGID, 'left');
		$this->db->join(TBL_TRAININGTYPES.' tt','tt.'.COL_TRAININGTYPEID.' = '.'t.'.COL_TRAININGTYPEID,'left');
		$this->db->join(TBL_DIVISIONS.' d','d.'.COL_DIVISIONID.' = '.'t.'.COL_DIVISIONID,'left');
		$this->db->join(TBL_BRANCHES.' b','b.'.COL_BRANCHID.' = '.'t.'.COL_BRANCHID,'left');
		$data = $this->db->get(TBL_TRAININGS.' t')->result_array();
		return $data;
	}

}