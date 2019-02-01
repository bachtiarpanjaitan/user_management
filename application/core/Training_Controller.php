<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mtraining');
			$this->load->model('mbranch');
			$this->load->model('mdivision');
			$this->load->model('memployee');
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
		$branch = $this->input->post('cabang');
		$division = $this->input->post('divisi');
		$type = $this->input->post('type');
		$data['type'] = $this->mtraining->getalltrainingtype();
		$data['division'] = $this->mdivision->getalldivision();
		$data['branch'] = $this->mbranch->getallbranch();
		$data['training'] = $this->mtraining->gettraininginherit($branch,$division, $type);
		$this->load->view('user/traininglist',$data);
	}

	public function addtraining(){
		$data['user'] = $this->memployee->getemployee();
		$data['trainer'] = $this->muser->getuserdata('',true, ROLE_USER);
		$data['type'] = $this->mtraining->getalltrainingtype();
		$data['division'] = $this->mdivision->getalldivision();
		$data['branch'] = $this->mbranch->getallbranch();
		$data['edit'] = false;
		$this->load->view('user/addtraining',$data);
	}

	public function trainingedit($id){
		if(!empty($id)){
			$this->db->where(COL_TRAININGID, $id);
		}
		$data['training'] = $this->mtraining->gettraining($id);
		$data['user'] = $this->memployee->getemployee();
		$data['trainer'] = $this->muser->getuserdata('',true, ROLE_USER);
		$data['type'] = $this->mtraining->getalltrainingtype();
		$data['division'] = $this->mdivision->getalldivision();
		$data['branch'] = $this->mbranch->getallbranch();
		$data['edit'] = true;
		// var_dump($data['training']);

		$this->load->view('user/addtraining', $data);
	}
}