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
                // var_dump($allDataInSheet);
                $flag = true;
                $i=3;
                // $this->db->query('delete from trainings');
                // $this->db->query('ALTER TABLE trainings AUTO_INCREMENT = 1');
                for ($i;$i < count($allDataInSheet) - 3; $i++) {
                    
                    if($flag){
                        $flag =false;
                        continue;
                    }
                    $name = $allDataInSheet[$i]['B'];
                    $rowuser = $this->muser->getemployeewithname(trim($name));
                    if(!$rowuser){
                        print_r("Nama tidak ditemukan didaftar user training dengan nama: <b>". $name ."</b> <br>");
                        continue;
                    }
                    $training = $allDataInSheet[$i]['F'];
                    if($training == ""){
                        $training = 'DEFAULT';
                    }
                    $rowtraining = $this->mtraining->gettrainingtypewithname(trim($training));
                    if(!$rowtraining){
                        echo "Jenis training tidak ditemukan dengan nama <b>". $training."</b> . <br>";
                        continue;
                    }

                    $branch = $allDataInSheet[$i]['D'];
                    if($branch == ""){
                        $branch = 'DEFAULT';
                    }
                    $rowbranch = $this->mbranch->getbranchwithname(trim($branch));
                    if(!$rowbranch){
                        echo "Cabang tidak ditemukan di daftar dengan nama: <b>". $branch ." </b> <br>";
                        continue;
                    }

                    $title = trim($allDataInSheet[$i]['E']);
                    if(empty($title)){
                        $title = "Judul training tidak diset.";
                    }
                   
                    // $data = array(
                    //     $rowuser,
                    //     $rowtraining,
                    //     $rowbranch
                    // );
                    // var_dump($data);
                    // return;

                    
                    $trainingdate = $allDataInSheet[$i]['G'];
                    if($trainingdate == '-'){
                        continue;
                    }
                    if($trainingdate){
                       $date = str_replace(' ','-',$trainingdate);
                        $date = date('Y-m-d', strtotime($date));
                    }
                    $insertdata[COL_EMPLOYEETRAININGID] = $rowuser[0][COL_EMPLOYEETRAININGID];
                    $insertdata[COL_DESCRIPTION] = 'Import From Excel File';
                    $insertdata[COL_CREATEDBY] = 'System';
                    $insertdata[COL_CREATEDON] = date('Y-m-d');
                    $insertdata[COL_CREATEDBY] = 'System';
                    // $insertdata[COL_CREATEDON] = date('Y-m-d');
                    $insertdata[COL_TRAININGDATE] = $date ;
                    // $insertdata[COL_TRAININGDATE] = date('Y-m-d');
                    $insertdata[COL_TRAININGTYPEID] = $rowtraining[0][COL_TRAININGTYPEID];
                    $insertdata[COL_TRAINER] = 'Default';
                    $insertdata[COL_TRAININGTITLE] = $title ;
                    $insertdata[COL_DIVISIONID] = 3;
                    // $insertdata[COL_NIPP] = $allDataInSheet[$i]['C'];
                    $insertdata['durasi'] = $allDataInSheet[$i]['H'];
                    $insertdata['lokasi'] = $allDataInSheet[$i]['I'];
                    $insertdata['description'] = $allDataInSheet[$i]['J'];

                    $insertdata[COL_BRANCHID] = $rowbranch[0][COL_BRANCHID];
                    $this->mexcel->importdatatraining($insertdata); 
                    // if($i == count($allDataInSheet) - 3 ){
                    //     $this->load->view('user/setting');
                    // }
                } 
                $this->load->view('user/setting');                                      

            } catch (Exception $e) {
                die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME)
                        . '": ' .$e->getMessage());
            }
        }else{
            echo $error['error'];
            }           
        }
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
                            $length = trim($allDataInSheet[$i]['E']);
                            if($length == ""){
                                $length = 0;
                            }
                            $inserdata['name'] = trim($allDataInSheet[$i]['B']);
                            $inserdata['nipp'] = trim($allDataInSheet[$i]['C']);
                            $inserdata['email'] = 'NOT SET';
                            $inserdata['address'] = 'Tidak Tersedia';
                            $inserdata['camefrom'] = 'Tidak Tersedia';
                            $inserdata['entrydate'] = date('Y-m-d');
                            $inserdata['lenghtofwork'] = $length;
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

    public function uploaddatavendor()
    {
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
                $i=3;
                 for ($i;$i < count($allDataInSheet) - 3; $i++) {
                     $inserdata['vendorname'] = trim($allDataInSheet[$i]['B']);
                     $result = $this->mexcel->importdatavendor($inserdata); 
                 }

            }catch (Exception $e) {
                die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME)
                        . '": ' .$e->getMessage());
            }
                    
        }
    }
}
}