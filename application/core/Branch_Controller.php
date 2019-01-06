<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Branch_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mbranch');
			$this->load->library('session');
			$this->load->library('form_validation');
	    }

	public function addbranch(){
		$data['edit'] = false;
		$this->load->view('user/addbranch', $data);
	}

	public function branchlist(){
		$data['branches'] = $this->mbranch->getallbranch();
		$this->load->view('user/branchlist', $data);
	}

	public function branchedit($id){
		if(!empty($id)){
			$data['edit'] = true;
			$data['branch'] = $this->mbranch->getbranch($id);
			$this->load->view('user/addbranch', $data);
		}
	}
}