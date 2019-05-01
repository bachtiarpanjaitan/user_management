<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sppt_Controller extends CI_Controller {

	public function __construct() {
        parent::__construct();
        $this->load->helper('custom_helper');
        $this->load->helper('url');
        $this->load->library('session');
        $this->load->model('msppt');
    }

    public function addsppt(){
        $data['edit'] = false;
        $data['vendor'] = $this->msppt->getvendor();
		$this->load->view('user/addsppt', $data);
    }

    public function spptedit($id){
        $data['edit'] = true;
        $data['vendor'] = $this->msppt->getvendor();
        $data['sppt'] = $this->msppt->getallsppt($id)[0];
        // var_dump($data);
        // return;
		$this->load->view('user/addsppt', $data);
    }
    
    public function spptlist(){
		$data['sppts'] = $this->msppt->getallsppt();
		$this->load->view('user/spptlist', $data);
    }
    
}