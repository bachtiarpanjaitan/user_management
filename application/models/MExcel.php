<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
 
class MExcel extends CI_Model {
 
    public function __construct() {
		parent::__construct();
		$this->load->database();
	}

    public function importdatausertraining($data) {
        $this->db->where(COL_NAME, $data[COL_NAME]);
        $result = $this->db->get(TBL_EMPLOYEETRAININGS)->result_array();
        if(count($result) <= 0){
            $res = $this->db->insert(TBL_EMPLOYEETRAININGS,$data);
            if($res){
                return TRUE;
            }else{
                return FALSE;
            }
        }
    }

    public function importdatatraining($data) {
        // var_dump($data);
        return;
        if($data){
            $res = $this->db->insert(TBL_TRAININGS,$data);
            var_dump($this->db->last_query());
            if($res){
                return TRUE;
            }else{
                return FALSE;
            }
        }
    }
 
}
 
?>
 