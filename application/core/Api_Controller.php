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
			$this->load->helper(array('form', 'url'));
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

	public function saveuser(){

		$password = $username = $this->input->post("username");
		$email = $this->input->post('email');
		$fullname = $this->input->post('fullname');
		$telepon = $this->input->post('telepon');
		$nipp = $this->input->post("nipp");
		$role = $this->input->post("roleid");
		$branch = $this->input->post("branchid");
		$edit = $this->input->post("edit");
		$config = array(
			array(
					'field' => 'username',
					'label' => 'Username',
					'rules' => 'required'
			),
			array(
					'field' => 'password',
					'label' => 'Password',
					'rules' => 'required'
			),
			array(
					'field' => 'email',
					'label' => 'Email',
					'rules' => 'required|valid_email'
			),
			array(
				'field' => 'fullname',
				'label' => 'Fullname',
				'rules' => 'required'
			),
			array(
				'field' => 'telepon',
				'label' => 'Telepon',
				'rules' => 'required'
			),
			array(
				'field' => 'nipp',
				'label' => 'nipp',
				'rules' => 'required'
			),
		);
		$validate = $this->form_validation->set_rules($config);
		if($validate == false){
			$resp['success'] = false;
			$resp['message'] = "Silahkan Isi data yang dibutuhkan";
			echo json_encode($resp);
			return;
		}

		if(!$edit){
			$user = $this->muser->getuserdata($username);
			if(count($user) > 0){
				$resp['success'] = false;
				$resp['message'] = "Username sudah pernah digunakan";
				echo json_encode($resp);
				return;
			}
		}

		$data = array(
			COL_USERNAME => $username,
			COL_EMAIL => $email,
			COL_FULLNAME => $fullname,
			COL_PASSWORD => md5($password),
			COL_ROLEID => ROLE_ADMIN,
			COL_ISSUSPEND => 0,
			COL_CREATEDBY => getuserlogin('username'),
			COL_CREATEDON => date("Y-m-d H:i:s")
		);
		$data2 = array(
			COL_NIPP => $nipp,
			COL_USERNAME => $username,
			COL_BRANCHID => $branch,
			COL_PHONENUMBER => $telepon
		);
		if(!$edit){
			$hassave = $this->muser->saveuser($data);
		}else{
			$hassave = $this->muser->updateuser($data, $username);
		}
		if($hassave){
			if(!$edit){
				$save = $this->muser->saveuserinformation($data2);
			}else{
				$save = $this->muser->updateuserinformation($data2, $username);
			}
			
			if($save){
				$resp['success'] = true;
				$resp['message'] = "Data user sudah disimpan";
			}else{
				$resp['succes'] = false;
				$resp['message'] = "Data Detail tidak dapat disimpan";
			}	
		}else{
			$resp['succes'] = false;
			$resp['message'] = "Data Pengguna tidak dapat disimpan";
		}
		echo json_encode($resp);
	}

}