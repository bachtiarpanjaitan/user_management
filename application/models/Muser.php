<?php

class Muser extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
	}

	public function getuserdata($id = '',$array = false, $role = ""){
		if(!empty($id)){
			$this->db->where(COL_USERNAME, $id);
		}
		if(!empty($role)){
			$this->db->where(COL_ROLEID, ROLE_USER);
		}
		if($array){
			$data = $this->db->get(TBL_USERS)->result_array();
		}else{
			$data = $this->db->get(TBL_USERS)->result();
		}
		return $data;
	}

	public function getsingleuserdata($id){
		if(!empty($id)){
			$this->db->where(TBL_USERS.'.'.COL_USERNAME, $id);
			$this->db->join('userinformations ui','ui.'. COL_USERNAME.' = '. TBL_USERS.'.'.COL_USERNAME, 'inner');
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

	public function getalluser(){
		$this->db->join('userinformations ui','ui.'. COL_USERNAME.' = '. TBL_USERS.'.'.COL_USERNAME, 'inner');
		$this->db->join(TBL_BRANCHES, TBL_BRANCHES.'.'.COL_BRANCHID.' = '.'ui.'.COL_BRANCHID, 'left' );
		return $this->db->get(TBL_USERS)->result_array();
	}

	public function saveemployee($data){
		if(!empty($data)){
			$this->db->insert(TBL_EMPLOYEETRAININGS, $data);
			return true;
		}else{
			return false;
		}
	}
	public function updateemployee($data,$id){
		if(!empty($data) && !empty($id)){
			$this->db->where(COL_EMPLOYEETRAININGID, $id);
			$this->db->update(TBL_EMPLOYEETRAININGS, $data);
			return true;
		}else{
			return false;
		}
	}

	public function getemployee($id){
		if(!empty($id)){
			$this->db->where(COL_EMPLOYEETRAININGID, $id);
			$data = $this->db->get(TBL_EMPLOYEETRAININGS)->result_array();
			return $data;
		}
	}
	public function getemployeewithname($name){
		if(!empty($name)){
			$this->db->where(COL_NAME, $name);
			$data = $this->db->get(TBL_EMPLOYEETRAININGS)->result_array();
			return $data;
		}
	}
	public function getemployeebyname($name){
		if(!empty($name)){
			$this->db->where(COL_NAME, $name);
			$data = $this->db->get(TBL_EMPLOYEETRAININGS)->result_array();
			return $data;
		}
	}
	public function getallemployee(){
		return $this->db->get(TBL_EMPLOYEETRAININGS)->result_array();
	}

	public function getsingleemployeedata($id){
		if(!empty($id)){
			$this->db->where(COL_EMPLOYEETRAININGID, $id);
			$data = $this->db->get(TBL_EMPLOYEETRAININGS)->row();
			if($data){
				return $data;
			}
			
		}
	}

	public function deleteuser($username){
		if($username){
			$this->db->where(COL_USERNAME, $username);
			if($this->db->delete(TBL_USERS)){
				return true;
			}else{
				return false;
			}
		}
	}

	public function deleteemployee($id){
		if($id){
			$this->db->where(COL_EMPLOYEETRAININGID, $id);
			if($this->db->delete(TBL_EMPLOYEETRAININGS)){
				return true;
			}else{
				return false;
			}
		}
	}

	public function getusercount(){
		$data = count($this->db->get(TBL_USERS)->result_array());
		return $data;
	}
	public function gettrainingcount(){
		$data = count($this->db->get(TBL_TRAININGS)->result_array());
		return $data;
	}
	public function getemployeecount(){
		$data = count($this->db->get(TBL_EMPLOYEETRAININGS)->result_array());
		return $data;
	}

	public function getrecenttraining(){
		$this->db->order_by('t.createdon','desc');
		$this->db->limit(5);
		$this->db->join(TBL_EMPLOYEETRAININGS.' d','d.'.COL_EMPLOYEETRAININGID.' = '.'t.'.COL_EMPLOYEETRAININGID,'left');
		$this->db->join(TBL_TRAININGTYPES.' e','e.'.COL_TRAININGTYPEID.' = '.'t.'.COL_TRAININGTYPEID,'left');
		$this->db->join(TBL_BRANCHES.' b','b.'.COL_BRANCHID.' = '.'t.'.COL_BRANCHID,'left');
		$this->db->where('YEAR(t.createdon)', date('Y'));
		$this->db->where('MONTH(t.createdon)', date('m'));
		$data = $this->db->get(TBL_TRAININGS.' t')->result_array();
		// var_dump($this->db->last_query());
		return $data;
	}

	public function getrecentuser(){
		$this->db->order_by('t.createdon','desc');
		$this->db->limit(5);
		$this->db->join('userinformations d','d.'.COL_USERNAME.' = '.'t.'.COL_USERNAME,'left');
		$this->db->join(TBL_BRANCHES.' e','e.'.COL_BRANCHID.' = '.'d.'.COL_BRANCHID,'left');
		$this->db->where('YEAR(t.createdon)', date('Y'));
		$this->db->where('MONTH(t.createdon)', date('m'));
		$data = $this->db->get(TBL_USERS.' t')->result_array();
		// var_dump($this->db->last_query());
		return $data;
	}

}