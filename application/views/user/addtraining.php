<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
    <form action="">
        <div class="col-md-6" class="row">
            <input type="hidden" id="id" value="<?= $edit? $training[COL_TRAININGID]:'' ?>">
            <div class="form-group">
                <label for="fullname">Full Name</label>
                <select name="fullname" id="fullname" class="form-control select2 " value="<?= $edit? $training[COL_NAME]:'' ?>">
                    <?php foreach($user as $u){ ?>
                        <option value="<?= $u[COL_EMPLOYEETRAININGID] ?>"><?= $u[COL_NAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="trainingtitle">Training Title</label>
                <input type="text" class="form-control" id="trainingtitle" required value="<?= $edit? $training[COL_TRAININGTITILE]:'' ?>">
            </div>
            <div class="form-group">
                <label for="trainingtype">Training Type</label>
                <select name="trainingtype" id="trainingtype" class="form-control" value="<?= $edit? $training[COL_TRAININGTYPEID]:'' ?>">
                    <?php foreach($type as $u){ ?>
                        <option value="<?= $u[COL_TRAININGTYPEID] ?>"><?= $u[COL_TRAININGTYPENAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea name="description" id="description" cols="30" rows="5" class="form-control"><?= $edit? $training[COL_DESCRIPTION]:'' ?></textarea>
            </div>
        </div>
        <div class="col-md-6" class="row">
            <div class="form-group">
                <label for="trainer">Trainer</label>
                <select name="trainer" id="trainer" class="form-control select2" value="<?= $edit? $training[COL_USERNAME]:'' ?>">
                    <?php foreach($trainer as $u){ ?>
                        <option value="<?= $u[COL_USERNAME] ?>"><?= $u[COL_FULLNAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="division">Divisi</label>
                <select name="division" id="division" class="form-control" value="<?= $edit? $training[COL_DIVISIONID]:'' ?>">
                    <?php foreach($division as $u){ ?>
                        <option value="<?= $u[COL_DIVISIONID] ?>"><?= $u[COL_DIVISIONNAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="branch">Cabang</label>
                <select name="branch" id="branch" class="form-control" value="<?= $edit? $training[COL_BRANCHID]:'' ?>">
                    <?php foreach($branch as $u){ ?>
                        <option value="<?= $u[COL_BRANCHID] ?>"><?= $u[COL_BRANCHNAME] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="trainingdate">Start Date of Training</label>
                <input type=date class="form-control" id="trainingdate" value="<?= $edit? $training[COL_TRAININGDATE]:'' ?>" >
            </div>
            
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <label for=""></label>
                <button class="btn btn-primary" type="button" id="btnsave">Save</button>
            </div>
        </div>
    </form>
</div>
<?php $this->load->view('user_footer.php') ?>
<script>
    $(document).ready(function () {
        $('.select2').select2();

        $('#btnsave').click(function (e) { 
            if($('#fullname').val() == ""){
                swal('error', 'Username tidak boleh kosong', 'error');
                return false;
            }
            if($('#trainingtitle').val() == ""){
                swal('error', 'Judul training tidak boleh kosong', 'error');
                return false;
            }
            if($('#trainingtype').val() == ""){
                swal('error', 'Type training tidak boleh kosong', 'error');
                return false;
            }
            if($('#trainingdate').val() == ""){
                swal('error', 'Tanggal Mulai Training tidak boleh kosong', 'error');
                return false;
            }
            if($('#trainer').val() == ""){
                swal('error', 'Trainer tidak boleh kosong', 'error');
                return false;
            }
            if($('#division').val() == ""){
                swal('error', 'Divisi tidak boleh kosong', 'error');
                return false;
            }
            if($('#branch').val() == ""){
                swal('error', 'Cabang tidak boleh kosong', 'error');
                return false;
            }

            $.ajax({
                type: "POST",
                url: "<?= site_url('api/saveemployeetraining') ?>",
                data: {
                    fullname: $('#fullname').val(),
                    title: $('#trainingtitle').val(),
                    type: $('#trainingtype').val(),
                    date: $('#trainingdate').val(),
                    trainer: $('#trainer').val(),
                    division: $('#division').val(),
                    description: $('#description').val(),
                    id: $('#id').val(),
                    edit: <?= $edit?'1':'0' ?>,
                    branch: $('#branch').val()
                },
                dataType: "JSON",
                success: function (response) {
                    if(response.success == true){
                        swal('success', response.message, 'success')
                                .then((val) => {
                                    location.reload();
                                });
                    }else{
                        swal('error', response.message, 'error');
                    }
                }
            });
            
        });
    });
</script>