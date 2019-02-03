<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

 	public function __construct() {
       parent::__construct();
       $this->load->model('muser');
    }

  public function index(){
    $data['usercount'] = $this->muser->getusercount();
    $data['trainingcount'] = $this->muser->gettrainingcount();
    $data['employeecount'] = $this->muser->getemployeecount();
    $data['recenttraining'] = $this->muser->getrecenttraining();
    $data['recentuser'] = $this->muser->getrecentuser();
    $data['user'] = $this->muser->getuserdata();
    // var_dump($data['recentuser']);
		$this->load->view('dashboard',$data);
  }
  
  public function setting(){
    $this->load->view('user/setting');
  }


}