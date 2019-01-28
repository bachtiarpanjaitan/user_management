<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
    <form >
        <div class="col col-md-6">
            <input type="hidden" id="employeetrainingid" value="<?= $edit?$user->employeetrainingid:''  ?>">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" required value="<?= $edit?$user->name:''  ?>">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" required value="<?= $edit?$user->email:''  ?>">
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <input type="text" class="form-control" id="address" required value="<?= $edit?$user->address:''  ?>">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" id="btnsave" type="button">Simpan</button>
            </div>
        </div>
        <div class="col col-md-6">
            <div class="form-group">
                <label for="camefrom">Came From</label>
                <input type="text" class="form-control" id="camefrom" required value="<?= $edit?$user->camefrom:''  ?>">
            </div>
            <div class="form-group">
                <label for="entrydate">Entry Date</label>
                <input type="date" class="form-control" id="entrydate" required value="<?= $edit?$user->entrydate:''  ?>">
            </div>
            <div class="form-group">
                <label for="lenghtofwork">Lenght Of Work</label>
                <div class="input-group">
                    
                    <input type="text" class="form-control" id="lenghtofwork" required value="<?= $edit?$user->lenghtofwork:''  ?>">
                    <div class="input-group-append">
                        <span class="input-group-text">Bulan</span>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<?php $this->load->view('user_footer.php') ?>
<script>
    $(document).ready(function () {
        $('#btnsave').click(function (e) {
            if($('#name').val() == ""){
                swal('error', 'Nama tidak boleh kosong', 'error');
                return false;
            } 
            if($('#email').val() == ""){
                swal('error', 'Email tidak boleh kosong', 'error');
                return false;
            }
            if($('#address').val() == ""){
                swal('error', 'Alamat tidak boleh kosong', 'error');
                return false;
            }  
            if($('#camefrom').val() == ""){
                swal('error', 'Asal Institusi tidak boleh kosong', 'error');
                return false;
            } 
            if($('#entrydate').val() == ""){
                swal('error', 'Tanggal Masuk tidak boleh kosong', 'error');
                return false;
            } 
            if($('#lenghtofwork').val() == ""){
                swal('error', 'Lama Bekerja Masuk tidak boleh kosong', 'error');
                return false;
            } 
            $.ajax({
                type: "POST",
                url: "<?= site_url('api/saveemployee') ?>",
                data: {
                    name: $('#name').val(),
                    email: $('#email').val(),
                    address: $('#address').val(),
                    camefrom: $('#camefrom').val(),
                    entrydate: $('#entrydate').val(),
                    lenghtofwork: $('#lenghtofwork').val(),
                    employeetrainingid: $('#employeetrainingid').val(),
                    edit: <?= $edit? '1':'0' ?>
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