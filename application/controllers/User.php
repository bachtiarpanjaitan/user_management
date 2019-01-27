<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include_once 'application/core/User_Controller.php';

class User extends User_Controller {

 	public function __construct() {
       parent::__construct();
       $this->load->model('mbranch');
       $this->load->model('muser');

    }

    function adduser(){
        $data['branch'] = $this->mbranch->getallbranch();
        $data['roles'] = $this->muser->getroles();
        $data['edit'] = false;
        return $this->load->view('user/adduser',$data);
    }
}