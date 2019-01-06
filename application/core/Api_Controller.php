<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_Controller extends CI_Controller {

	public function __construct() {
       parent::__construct();
			$this->load->helper('custom_helper');
			$this->load->helper('url');
			$this->load->model('muser');
			$this->load->model('mbranch');
			$this->load->model('mtraining');
			$this->load->model('mexpense');
			$this->load->library('session');
			$this->load->library('form_validation');
		$resp = "";
    }

	public function savebranch(){
		$branchname = $this->input->post('branchname');
		$description = $this->input->post('description');
		$edit = $this->input->post('edit');
		$id = $this->input->post('branchid');

		if(!$edit){
			if($this->mbranch->existbranchname($branchname)){
				$resp['success'] = false;
				$resp['message'] = 'Nama cabang sudah pernah digunakan.';
				echo json_encode($resp);
				return;
			}
		}

		if(empty($branchname)){
			$resp['success'] = false;
			$resp['message'] = 'Nama cabang tidak dimasukkan.';
			echo json_encode($resp);
			return;
		}

		$data = array(
			COL_BRANCHNAME => $branchname,
			COL_DESCRIPTION => $description
		);

		if($edit){
			$result = $this->mbranch->updatebranch($data, $id);
		}else{
			$result = $this->mbranch->addbranch($data);
		}
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data Cabang Berhasil Disimpan';
		}

		echo json_encode($resp);
	}

	public function savetrainingtype(){
		$ttypename = $this->input->post('ttypename');
		$description = $this->input->post('description');
		$edit = $this->input->post('edit');
		$id = $this->input->post('ttypeid');

		if(!$edit){
			if($this->mtraining->existtrainingtypename($ttypename)){
				$resp['success'] = false;
				$resp['message'] = 'Nama training sudah pernah digunakan.';
				echo json_encode($resp);
				return;
			}
		}

		if(empty($ttypename)){
			$resp['success'] = false;
			$resp['message'] = 'Nama type training tidak dimasukkan.';
			echo json_encode($resp);
			return;
		}

		$data = array(
			COL_TRAININGTYPENAME => $ttypename,
			COL_DESCRIPTION => $description
		);

		if($edit){
			$result = $this->mtraining->updatetrainingtype($data, $id);
		}else{
			$result = $this->mtraining->addtrainingtype($data);
		}
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data type training Berhasil Disimpan';
		}

		echo json_encode($resp);
	}

	public function deletetrainingtype(){
		$id = $this->input->post('id');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'Tipe training belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->mtraining->deletetrainingtype($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

	public function saveexpensetype(){
		$etypename = $this->input->post('etypename');
		$description = $this->input->post('description');
		$edit = $this->input->post('edit');
		$id = $this->input->post('t\etypeid');

		if(!$edit){
			if($this->mexpense->existexpensetypename($etypename)){
				$resp['success'] = false;
				$resp['message'] = 'Nama Jenis Pengeluaran sudah pernah digunakan.';
				echo json_encode($resp);
				return;
			}
		}

		if(empty($etypename)){
			$resp['success'] = false;
			$resp['message'] = 'Nama jenis pengeluaran tidak dimasukkan.';
			echo json_encode($resp);
			return;
		}

		$data = array(
			COL_EXPENSETYPENAME => $etypename,
			COL_DESCRIPTION => $description
		);

		if($edit){
			$result = $this->mexpense->updateexpensetype($data, $id);
		}else{
			$result = $this->mexpense->addexpensetype($data);
		}
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data jenis pengeluaran berhasil disimpan';
		}

		echo json_encode($resp);
	}

	public function deleteexpensetype(){
		$id = $this->input->post('id');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'Tipe biaya pengeluaran belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->mexpense->deleteexpensetype($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

	public function deletebranch(){
		$id = $this->input->post('id');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'Data cabang belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->mbranch->deletebranch($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

}