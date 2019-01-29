<?php

class MEmployee extends CI_Model{
	

	public function __construct() {
		parent::__construct();
		$this->load->database();
    }

    public function getemployee($id = ""){
        if(!empty($id)){
            $this->db->where(COL_EMPLOYEERAININGID, $id);
        }

        $data = $this->db->get('employeetrainings')->result_array();
        return $data;
    }
    
}
