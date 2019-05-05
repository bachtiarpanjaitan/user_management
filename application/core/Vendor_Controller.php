<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vendor_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mvendor');
			$this->load->library('session');
			$this->load->library('form_validation');
	    }

	public function addvendor(){
		$data['edit'] = false;
		$this->load->view('user/addvendor', $data);
	}

	public function vendorlist(){
		$data['vendors'] = $this->mvendor->getallvendor();
		$this->load->view('user/vendorlist', $data);
	}

	public function vendoredit($id){
		if(!empty($id)){
			$data['edit'] = true;
			$data['vendor'] = $this->mvendor->getvendor($id);
			$this->load->view('user/addvendor', $data);
		}
	}
}