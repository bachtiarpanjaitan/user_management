<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>

<div class="col col-md-12">
	<form>
		<input type="hidden" id="divisionid" value="<?= $edit? $division->divisionid: '' ?>">
		<div class="form-group">
			<label for="etypename"> Division Name</label>
			<input type="text" name="divisionname" id="divisionname" value="<?= $edit? $division->divisionname: '' ?>" class="form-control" required>
		</div>
		<div class="form-group">
			<label for="description"> Description</label>
			<textarea class="form-control" rows="5" name="description" id="description"><?= $edit?$division->description:'' ?></textarea>
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
				url: "<?= site_url('api/savedivision') ?>",
				data: {
					edit: '<?= $edit ?>',
					divisionid: $('#divisionid').val(),
					divisionname: $('#divisionname').val(),
					description: $('#description').val()
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