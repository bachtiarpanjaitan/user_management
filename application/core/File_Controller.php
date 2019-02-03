<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class File_Controller extends CI_Controller {

 	public function __construct() {
       parent::__construct();
    }

    function filemanager(){
        $this->load->view('files/index');
    }

}