<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>

<div class="col col-md-12">
	<form>
		<input type="hidden" id="branchid" value="<?= $edit? $branch->branchid: '' ?>">
		<div class="form-group">
			<label for="branchname"> Branch Name</label>
			<input type="text" name="branchname" id="branchname" value="<?= $edit? $branch->branchname: '' ?>" class="form-control" required>
		</div>
		<div class="form-group">
			<label for="description"> Description</label>
			<textarea class="form-control" rows="5" name="description" id="description"><?= $edit?$branch->description:'' ?></textarea>
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
				url: "<?= site_url('api/savebranch') ?>",
				data: {
					edit: '<?= $edit ?>',
					branchid: $('#branchid').val(),
					branchname: $('#branchname').val(),
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