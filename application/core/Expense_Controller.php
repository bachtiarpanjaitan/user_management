<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Expense_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mexpense');
			$this->load->library('session');
			$this->load->library('form_validation');
	    }

	public function addexpensetype(){
		$data['edit'] = false;
		$this->load->view('user/addexpensetype', $data);
	}

	public function expensetypelist(){
		$data['etypes'] = $this->mexpense->getallexpensetype();
		$this->load->view('user/expensetypelist', $data);
	}

	public function expensetypeedit($id){
		if(!empty($id)){
			$data['edit'] = true;
			$data['etype'] = $this->mexpense->getexpensetype($id);
			$this->load->view('user/addexpensetype', $data);
		}
	}
}