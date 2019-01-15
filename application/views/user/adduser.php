<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
    <form>
        <div class="col-md-6">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" required>
            </div>
            <div class="form-group">
                <label for="fullname">Fullname</label>
                <input type="text" class="form-control" id="fullname" required>
            </div>
            <div class="form-group">
                <label for="nipp">NIPP</label>
                <input type="text" class="form-control" id="nipp" required>
            </div>
            <div class="form-group">
                <label for="branch">Cabang</label>
                <select name="branch" id="branch" class="form-control">
                    <?php foreach($branch as $b){ ?>
                        <option value="<?= $b[COL_BRANCHID] ?>"><?= $b[COL_BRANCHNAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="button">Simpan</button>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" required>
            </div>
            <div class="form-group">
                <label for="phonenumber">Telepon</label>
                <input type="text" onkeypress="return AllowOnlyNumbers(event)" maxlength="15" class="form-control" id="phonenumber" required>
            </div>
            <div class="form-group">
                <label for="role">Role</label>
                <select name="role" id="role" class="form-control">
                <?php foreach($roles as $r){ ?>
                    <option value="<?= $r[COL_ROLEID] ?>"><?= $r[COL_ROLENAME] ?></option>
                <?php } ?>
                </select>
            </div>
        </div>
    </form>
</div>
<?php $this->load->view('user_footer.php') ?>