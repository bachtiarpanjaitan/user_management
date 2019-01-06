<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>

<div class="col col-md-12">
	<form>
		<input type="hidden" id="etypeid" value="<?= $edit? $etype->expensetypeid: '' ?>">
		<div class="form-group">
			<label for="etypename"> Expense Type Name</label>
			<input type="text" name="etypename" id="etypename" value="<?= $edit? $etype->expensetypename: '' ?>" class="form-control" required>
		</div>
		<div class="form-group">
			<label for="description"> Description</label>
			<textarea class="form-control" rows="5" name="description" id="description"><?= $edit?$etype->description:'' ?></textarea>
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
				url: "<?= site_url('api/saveexpensetype') ?>",
				data: {
					edit: '<?= $edit ?>',
					etypeid: $('#etypeid').val(),
					etypename: $('#etypename').val(),
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