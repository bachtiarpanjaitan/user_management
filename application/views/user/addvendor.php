<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>

<div class="col col-md-12">
	<form>
		<input type="hidden" id="vendorid" value="<?= $edit? $vendor->vendorid: '' ?>">
		<div class="form-group">
			<label for="etypename"> Vendor Name</label>
			<input type="text" name="vendorname" id="vendorname" value="<?= $edit? $vendor->vendorname: '' ?>" class="form-control" required>
		</div>
		<div class="form-group">
			<button class="btn btn-primary" id="savebtn" type="button">Save</button>
		</div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function () {
		$('#savebtn').click(function (e) { 
			$.ajax({
				type: "POST",
				url: "<?= site_url('api/savevendor') ?>",
				data: {
					edit: '<?= $edit ?>',
					vendorid: $('#vendorid').val(),
					vendorname: $('#vendorname').val(),
				},
				dataType: "JSON",
				success: function (response) {
					if(response.success == true){
						swal('success', response.message,'success');
					}else{
						swal('error',response.message,'error');
					}
				}
			});
			
		});
	});
</script>
<?php $this->load->view('user_footer.php') ?>