<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>

<div class="col col-md-12">
	<form>
		<input type="hidden" id="ttypeid" value="<?= $edit? $ttype->trainingtypeid: '' ?>">
		<div class="form-group">
			<label for="ttypename"> Training Type Name</label>
			<input type="text" name="ttypename" id="ttypename" value="<?= $edit? $ttype->trainingtypename: '' ?>" class="form-control" required>
		</div>
		<div class="form-group">
			<label for="description"> Description</label>
			<textarea class="form-control" rows="5" name="description" id="description"><?= $edit?$ttype->description:'' ?></textarea>
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
				url: "<?= site_url('api/savetrainingtype') ?>",
				data: {
					edit: '<?= $edit ?>',
					ttypeid: $('#ttypeid').val(),
					ttypename: $('#ttypename').val(),
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