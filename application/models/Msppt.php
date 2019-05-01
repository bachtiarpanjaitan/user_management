<?php
class Msppt extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
    }

    public function getvendor($id = null){
		if(!empty($id)){
			$this->db->where('vendorid', $id);
        }
        
        $data = $this->db->get('vendors')->result_array();
        return $data;
	}

	public function getsppt($id = null){
		if(!empty($id)){
			$this->db->where('spptid', $id);
        }  
        $data = $this->db->get('sppt')->result_array();
        return $data;
	}

	function addsppt($data){
		if(!empty($data)){
			$this->db->insert('sppt', $data);
			return true;
		}else{
			return false;
		}
	}

	function updatesppt($data, $id){
		if($id && count($data) > 0){
			$this->db->where('spptid', $id);
			$this->db->update('sppt', $data);
			return true;
		}else{
			return false;
		}
	}

	function getallsppt($id=null)
	{
		if(!empty($id)){
			$this->db->where('spptid',$id);
		}
		$this->db->select('sppt.*');
		$this->db->select('vendors.vendorname');
		$this->db->join('vendors','sppt.vendorid = vendors.vendorid','left');
		$data = $this->db->get('sppt')->result_array();
		// var_dump($this->db->last_query());
		return $data;
	}

	function deletesppt($id){
		if($id){
			$this->db->where('spptid', $id);
			if($this->db->delete('sppt')){
				return true;
			}else{
				return false;
			}
		}
	}
    
}
