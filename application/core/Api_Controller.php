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
			$this->load->model('mdivision');
			$this->load->library('session');
			$this->load->library('form_validation');
			$this->load->helper(array('form', 'url'));
		$resp = "";
    }

	public function savebranch(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
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
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
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
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
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
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
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
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
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
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$password = $username = $this->input->post("username");
		$email = $this->input->post('email');
		$fullname = $this->input->post('fullname');
		$telepon = $this->input->post('telepon');
		$nipp = $this->input->post("nipp");
		$role = $this->input->post("roleid");
		$branch = $this->input->post("branchid");
		$edit = $this->input->post("editid");
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

	public function saveemployee(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$name = $this->input->post('name');
		$email = $this->input->post('email');
		$address = $this->input->post('address');
		$camefrom = $this->input->post('camefrom');
		$entrydate = $this->input->post('entrydate');
		$lenght = $this->input->post('lenghtofwork');
		$edit = $this->input->post('edit');
		$employeeid = $this->input->post('employeetrainingid');

		$config = array(
			array(
				'field' => 'name',
				'label' => 'Name',
				'rules' => 'required'
			),
			array(
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'required'
			),
			array(
				'field' => 'addres',
				'label' => 'Address',
				'rules' => 'required'
			),
			array(
				'field' => 'camefrom',
				'label' => 'Camefrom',
				'rules' => 'required'
			),
			array(
				'field' => 'entrydate',
				'label' => 'Entrydate',
				'rules' => 'required'
			),
			array(
				'field' => 'lenghtofwork',
				'label' => 'LenghtOfWork',
				'rules' => 'required'
			)
		);

		$validate = $this->form_validation->set_rules($config);
		if($validate == false){
			$resp['success'] = false;
			$resp['message'] = "Silahkan Isi data yang dibutuhkan";
			echo json_encode($resp);
			return;
		}

		if(!$edit){
			$user = $this->muser->getemployeebyname($name);
			if(count($user) > 0){
				if($user[0][COL_EMAIL] == $email){
					$resp['success'] = false;
					$resp['message'] = "Username sudah pernah digunakan";
					echo json_encode($resp);
					return;
				}
			}
		}
		
		if(!$edit){
			$data = array(
				COL_NAME => $name,
				COL_EMAIL => $email,
				COL_ADDRESS => $address,
				COL_CAMEFROM => $camefrom,
				COL_ENTRYDATE => $entrydate,
				COL_LENGHTOFWORK => $lenght,
				COL_CREATEDBY => getuserlogin('username'),
				COL_CREATEDON => date("Y-m-d H:i:s")
			);
			$hassave = $this->muser->saveemployee($data);
		}else{
			$data = array(
				COL_NAME => $name,
				COL_EMAIL => $email,
				COL_ADDRESS => $address,
				COL_CAMEFROM => $camefrom,
				COL_ENTRYDATE => $entrydate,
				COL_LENGHTOFWORK => $lenght,
				COL_UPDATEDBY => getuserlogin('username'),
				COL_UPDATEDON => date("Y-m-d H:i:s")
			);
			$hassave = $this->muser->updateemployee($data, $employeeid);
		}

		if($hassave){
			$resp['success'] = true;
			$resp['message'] = "Data employee training sudah disimpan";
		}else{
			$resp['success'] = false;
			$resp['message'] = "Data employee training tidak tersimpan";
		}

		echo json_encode($resp);
	}

	public function deleteuser(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$id = $this->input->post('username');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'User belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->muser->deleteuser($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

	public function deleteemployee(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$id = $this->input->post('id');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'Employee Training belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->muser->deleteemployee($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

	public function savedivision(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$divisionname = $this->input->post('divisionname');
		$description = $this->input->post('description');
		$edit = $this->input->post('edit');
		$id = $this->input->post('divisionid');

		if(!$edit){
			if($this->mdivision->existdivisionname($divisionname)){
				$resp['success'] = false;
				$resp['message'] = 'Nama Divisi sudah pernah digunakan.';
				echo json_encode($resp);
				return;
			}
		}

		if(empty($divisionname)){
			$resp['success'] = false;
			$resp['message'] = 'Nama Divisi tidak dimasukkan.';
			echo json_encode($resp);
			return;
		}

		$data = array(
			COL_DIVISIONNAME => $divisionname,
			COL_DESCRIPTION => $description
		);

		if($edit){
			$result = $this->mdivision->updatedivision($data, $id);
		}else{
			$result = $this->mdivision->adddivision($data);
		}
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data Divisi berhasil disimpan';
		}

		echo json_encode($resp);
	}

	public function deletedivision(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$id = $this->input->post('id');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'Divisi pengeluaran belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->mdivision->deletedivision($id);
		if($result){
			$resp['success'] = true;
			$resp['message'] = 'Data berhasil Dihapus';
		}else{
			$resp['success'] = false;
			$resp['message'] = 'Data gagal dihapus';
		}
		echo json_encode($resp);
	}

	public function saveemployeetraining(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$fullname = $this->input->post('fullname');
		$title = $this->input->post('title');
		$type = $this->input->post('type');
		$date = $this->input->post('date');
		$trainer = $this->input->post('trainer');
		$division = $this->input->post('division');
		$branch = $this->input->post('branch');
		$description = $this->input->post('description');
		$edit = $this->input->post('edit');
		$id = $this->input->post('id');

		$config = array(
			array(
				'field' => 'fullname',
				'label' => 'Name',
				'rules' => 'required'
			),
			array(
				'field' => 'title',
				'label' => 'trainingtitle',
				'rules' => 'required'
			),
			array(
				'field' => 'type',
				'label' => 'TrainingType',
				'rules' => 'required'
			),
			array(
				'field' => 'date',
				'label' => 'trainingdate',
				'rules' => 'required'
			),
			array(
				'field' => 'trainer',
				'label' => 'trainer',
				'rules' => 'required'
			),
			array(
				'field' => 'division',
				'label' => 'division',
				'rules' => 'required'
			),
			array(
				'field' => 'branch',
				'label' => 'branch',
				'rules' => 'required'
			)
		);

		$validate = $this->form_validation->set_rules($config);
		if($validate == false){
			$resp['success'] = false;
			$resp['message'] = "Silahkan Isi data yang dibutuhkan";
			echo json_encode($resp);
			return;
		}

		if(!$edit){
			$data = array(
				COL_EMPLOYEETRAININGID => $fullname,
				COL_DESCRIPTION => $description,
				COL_TRAININGDATE => $date,
				COL_TRAININGTYPEID => $type,
				COL_TRAINER => $trainer,
				COL_TRAININGTITLE => $title,
				COL_DIVISIONID => $division,
				COL_BRANCHID => $branch,
				COL_CREATEDBY => getuserlogin('username'),
				COL_CREATEDON => date("Y-m-d H:i:s")
			);
			$hassave = $this->mtraining->saveemployeetraining($data);
		}else{
			$data = array(
				COL_EMPLOYEETRAININGID => $fullname,
				COL_DESCRIPTION => $description,
				COL_TRAININGDATE => $date,
				COL_TRAININGTYPEID => $type,
				COL_TRAINER => $trainer,
				COL_TRAININGTITLE => $title,
				COL_DIVISIONID => $division,
				COL_BRANCHID => $branch,
				COL_UPDATEDBY => getuserlogin('username'),
				COL_UPDATEDON => date("Y-m-d H:i:s")
			);
			$hassave = $this->mtraining->updateemployeetraining($data,$id);
		}

		if($hassave){
			$resp['success'] = true;
			$resp['message'] = "Data training sudah disimpan";
		}else{
			$resp['success'] = false;
			$resp['message'] = "Data training tidak tersimpan";
		}

		echo json_encode($resp);
	}

	public function deletetraining(){
		if(!islogin()){
			$resp['success'] = false;
			$resp['message'] = "TIdak dapat diotentiasi, login Terlebih Dahulu";
			echo json_encode($resp);
			return;
			
		}
		$id = $this->input->post('trainingid');
		if(empty($id)){
			$resp['success'] = false;
			$resp['message'] = 'training belum dipilih';
			echo json_encode($resp);
			return;
		}

		$result = $this->mtraining->deletetraining($id);
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