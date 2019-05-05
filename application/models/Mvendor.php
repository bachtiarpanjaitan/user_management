	<?php
    class Mvendor extends CI_Model{

        public function __construct() {
            parent::__construct();
            $this->load->database();
        }
        function existvendorname($name){
            $this->db->where('vendorname', $name);
            $data = $this->db->get('vendors')->result_array();
            if(count($data) > 0){
                return true;
            }else{
                return false;
            }
        }

        function addvendor($data){
            if(!empty($data)){
                $this->db->insert('vendors', $data);
                return true;
            }else{
                return false;
            }
        }

        function updatevendor($data, $id){
            if($id && count($data) > 0){
                $this->db->where('vendorid', $id);
                $this->db->update('vendors', $data);
                return true;
            }else{
                return false;
            }
        }

        function deletevendor($id){
		if($id){
			$this->db->where('vendorid', $id);
			if($this->db->delete('vendors')){
				return true;
			}else{
				return false;
			}
        }
        }
        
        function getallvendor(){
		    return $this->db->get('vendors')->result_array();
        }
        
        function getvendor($id){
            $this->db->where('vendorid', $id);
            $data = $this->db->get('vendors')->row();
            return $data;
	    }

	}
