<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col-md-12">
    <div class="col-md-4">
        <form action="<?= site_url();?>excel/uploaddatausertraining" method="post" enctype="multipart/form-data">
            Upload User Training file : 
            <div class="form-group">
                <input type="file" name="uploadFile" value="" /><br><br>
                <input type="submit" name="submit" class="btn btn-primary" value="Upload" />
            </div>
        </form>
    </div>
    <div class="col-md-4">
        <form action="<?= site_url();?>excel/uploaddatatraining" method="post" enctype="multipart/form-data">
            Upload Training file : 
            <div class="form-group">
                <input type="file" name="uploadFile" value="" /><br><br>
                <input type="submit" name="submit" class="btn btn-primary" value="Upload" />
            </div>
        </form>
    </div>
     <div class="col-md-4">
        <form action="<?= site_url();?>excel/uploaddatavendor" method="post" enctype="multipart/form-data">
            Upload Vendor file : 
            <div class="form-group">
                <input type="file" name="uploadFile" value="" /><br><br>
                <input type="submit" name="submit" class="btn btn-primary" value="Upload" />
            </div>
        </form>
    </div>
</div>
<?php $this->load->view('user_footer.php') ?>