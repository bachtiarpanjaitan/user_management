<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Division_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mdivision');
			$this->load->library('session');
			$this->load->library('form_validation');
	    }

	public function adddivision(){
		$data['edit'] = false;
		$this->load->view('user/adddivision', $data);
	}

	public function divisionlist(){
		$data['division'] = $this->mdivision->getalldivision();
		$this->load->view('user/divisionlist', $data);
	}

	public function divisionedit($id){
		if(!empty($id)){
			$data['edit'] = true;
			$data['division'] = $this->mdivision->getdivision($id);
			$this->load->view('user/adddivision', $data);
		}
	}
}