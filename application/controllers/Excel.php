<?php 

defined('BASEPATH') OR exit('No direct script access allowed');  
  
class Excel extends CI_Controller {  

	function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('mexcel');
        $this->load->model('muser');
        $this->load->model('mtraining');
        $this->load->model('mbranch');
        $this->load->database();

    }
      

    public function uploadCsv(){
        $this->load->view('upload');
    }

    public function uploaddatatraining(){
        if ($this->input->post('submit')) {
            require_once APPPATH ."/third_party/PHPExcel.php";
            $path = './uploads/';
            $config['upload_path'] = $path;
            $config['allowed_types'] = 'xlsx|xls';
            $config['remove_spaces'] = TRUE;
            // var_dump( $config['upload_path']);
            $this->load->library('upload', $config);
            $this->upload->initialize($config);           
            if (!$this->upload->do_upload('uploadFile')) {
                $error = array('error' => $this->upload->display_errors());
            } else {
                $data = array('upload_data' => $this->upload->data());
            }
            if(empty($error)){
                if (!empty($data['upload_data']['file_name'])) {
                    $import_xls_file = $data['upload_data']['file_name'];
                } else {
                    $import_xls_file = 0;
                }
                $inputFileName = $path . $import_xls_file;
            
            try {
                $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                $objPHPExcel = $objReader->load($inputFileName);
                $allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null, true, true, true);
                $flag = true;
                $i=3;
                $this->db->query('delete from trainings');
                $this->db->query('ALTER TABLE trainings AUTO_INCREMENT = 1');
                for ($i;$i < count($allDataInSheet) - 3; $i++) {
                    if($flag){
                        $flag =false;
                        continue;
                    }
                    $name = $allDataInSheet[$i]['B'];
                    $rowuser = $this->muser->getemployeewithname($name);
                    if(!$rowuser){
                        continue;
                    }
                    $training = $allDataInSheet[$i]['F'];
                    $rowtraining = $this->mtraining->gettrainingtypewithname($training);
                    if(!$rowtraining){
                        continue;
                    }

                    $branch = $allDataInSheet[$i]['D'];
                    $rowbranch = $this->mbranch->getbranchwithname($branch);
                    if(!$rowbranch){
                        continue;
                    }
                    // $data = array(
                    //     $rowuser,
                    //     $rowtraining,
                    //     $rowbranch
                    // );
                    // var_dump($data);
                    // return;
                    $inserdata[COL_EMPLOYEETRAININGID] = $rowuser[0][COL_EMPLOYEETRAININGID];
                    $inserdata[COL_DESCRIPTION] = 'Import From Excel File';
                    $inserdata[COL_CREATEDBY] = 'System';
                    $inserdata[COL_CREATEDON] = date('Y-m-d');
                    $inserdata[COL_CREATEDBY] = 'System';
                    $inserdata[COL_CREATEDON] = date('Y-m-d');
                    $inserdata[COL_TRAININGDATE] = date('Y-m-d');
                    $inserdata[COL_TRAININGTYPEID] = $rowtraining[0][COL_TRAININGTYPEID];
                    $inserdata[COL_TRAINER] = 'Default';
                    $inserdata[COL_TRAININGTITLE] = $allDataInSheet[$i]['E'];
                    $inserdata[COL_DIVISIONID] = 3;

                    $inserdata[COL_BRANCHID] = $rowbranch[0][COL_BRANCHID];
                    $this->mexcel->importdatatraining($inserdata); 
                }                                       

            } catch (Exception $e) {
                die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME)
                        . '": ' .$e->getMessage());
            }
        }else{
            echo $error['error'];
            }           
        }
        $this->load->view('user/setting');
    }

    public function uploaddatausertraining(){
        require_once APPPATH ."/third_party/PHPExcel.php";
        $path = './uploads/';
        $config['upload_path'] = $path;
        $config['allowed_types'] = 'xlsx|xls';
        $config['remove_spaces'] = TRUE;
        // var_dump( $config['upload_path']);
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if ($this->input->post('submit')) {   
                    if (!$this->upload->do_upload('uploadFile')) {
                        $error = array('error' => $this->upload->display_errors());
                    } else {
                        $data = array('upload_data' => $this->upload->data());
                    }
                    if(empty($error)){
                    if (!empty($data['upload_data']['file_name'])) {
                        $import_xls_file = $data['upload_data']['file_name'];
                    } else {
                        $import_xls_file = 0;
                    }
                    $inputFileName = $path . $import_xls_file;
                    
                    try {
                        $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
                        $objReader = PHPExcel_IOFactory::createReader($inputFileType);
                        $objPHPExcel = $objReader->load($inputFileName);
                        
                        $allDataInSheet = $objPHPExcel->getActiveSheet()->toArray(null, true, true, true);
                        $flag = true;
                        $i=3;
                        for ($i;$i < count($allDataInSheet) - 3; $i++) {
                            if($flag){
                                $flag =false;
                                continue;
                            }
                            if($allDataInSheet[$i]['B'] == null){
                                continue;
                            }
                            // var_dump($allDataInSheet[$i]);

                            $inserdata['name'] = $allDataInSheet[$i]['B'];
                            $inserdata['email'] = 'NOT SET';
                            $inserdata['address'] = 'Tidak Tersedia';
                            $inserdata['camefrom'] = 'Tidak Tersedia';
                            $inserdata['entrydate'] = date('Y-m-d');
                            $inserdata['lenghtofwork'] = 0;
                            $inserdata['createdon'] = date('Y-m-d');
                            $inserdata['createdby'] = 'System';
                            $inserdata['updatedon'] = date('Y-m-d');
                            $inserdata['updatedby'] = 'System';
                            $result = $this->mexcel->importdatausertraining($inserdata);   
                        }                           
    
                } catch (Exception $e) {
                    die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME)
                                . '": ' .$e->getMessage());
                    }
                }else{
                    echo $error['error'];
                    }           
            }
        $this->load->view('user/setting');
    }
}