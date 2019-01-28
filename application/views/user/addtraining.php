<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
    <form action="">
        <div class="col-md-6" class="row">
            <div class="form-group">
                <label for="username">Username</label>
                <select name="username" id="username" class="form-control"></select>
            </div>
            <div class="form-group">
                <label for="trainingtitle">Training Title</label>
                <input type="text" class="form-control" id="trainingtitle" required>
            </div>
            <div class="form-group">
                <label for="trainingtype">Training Type</label>
                <select name="trainingtype" id="trainingtype" class="form-control">
                
                </select>
            </div>
            <div class="form-group">
                <label for="trainingdate">Training Date</label>
                <input type=date class="form-control" id="trainingdate" >
            </div>
            <div class="form-group">
                <label for=""></label>
                <button class="btn btn-primary" type="button">Save</button>
            </div>
        </div>
        <div class="col-md-6" class="row">
            <div class="form-group">
                <label for="trainer">Trainer</label>
                <select name="trainer" id="trainer" class="form-control"></select>
            </div>
            <div class="form-group">
                <label for="divisi">Divisi</label>
                <select name="divisi" id="divisi" class="form-control"></select>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea name="description" id="description" cols="30" rows="5" class="form-control"></textarea>
            </div>
        </div>
    </form>
</div>
<?php $this->load->view('user_footer.php') ?>