<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mtraining');
			$this->load->library('session');
			$this->load->library('form_validation');
	    }

	public function addtrainingtype(){
		$data['edit'] = false;
		$this->load->view('user/addtrainingtype', $data);
	}

	public function trainingtypelist(){
		$data['ttypes'] = $this->mtraining->getalltrainingtype();
		$this->load->view('user/trainingtypelist', $data);
	}

	public function trainingtypeedit($id){
		if(!empty($id)){
			$data['edit'] = true;
			$data['ttype'] = $this->mtraining->gettrainingtype($id);
			$this->load->view('user/addtrainingtype', $data);
		}
	}

	public function traininglist(){
		$this->load->view('user/traininglist');
	}

	public function addtraining(){
		$this->load->view('user/addtraining');
	}
}