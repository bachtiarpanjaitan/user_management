<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<form action="<?= site_url('training/traininglist') ?>" method="POST">
	<div class="col col-md-12" style="padding-bottom: 20px">
		<div class="col col-md-3">
			<label for="cabang">Cabang</label>
			<select name="cabang" id="cabang" class="form-control">
				<option value="">Semua</option>
				<?php foreach($branch as $data){ ?>
					<option value="<?= $data[COL_BRANCHID] ?>"><?= $data[COL_BRANCHNAME] ?></option>
				<?php } ?>
			</select>
		</div>
		<div class="col col-md-3">
			<label for="divisi">Divisi</label>
			<select name="divisi" id="divisi" class="form-control">
				<option value="">Semua</option>
				<?php foreach($division as $data){ ?>
					<option value="<?= $data[COL_DIVISIONID] ?>"><?= $data[COL_DIVISIONNAME] ?></option>
				<?php } ?>
			</select>
		</div>
		<div class="col col-md-3">
			<label for="type">Tipe Training</label>
			<select name="type" id="type" class="form-control">
				<option value="">Semua</option>
				<?php foreach($type as $data){ ?>
					<option value="<?= $data[COL_TRAININGTYPEID] ?>"><?= $data[COL_TRAININGTYPENAME] ?></option>
				<?php } ?>
			</select>
		</div>
		<div class="col col-md-3">
			<label for="">...</label>
			<button type="submit" class="btn btn-primary btn-block" id="btnsearch">SEARCH</button>
		</div>
	</div>
</form>
<div class="container-fluid">
	<div class="col col-md-12" style="display:inline-block;">
		<table class="table table-hover" id="datatable">
			<thead>
				<th>No</th>
				<th>Nama Lengkap</th>
				<th>Mulai Training</th>
				<th>Judul</th>
				<!-- <th>Asal</th> -->
				<th>Jenis Training</th>
				<th>Instruktur</th>
				<th>Cabang</th>
				<!-- <th>Divisi</th> -->
				<th>Action</th>
			</thead>
			<tbody>
			<?php 
			$i = 1;
			foreach($training as $data){ ?>
				<tr>
					<td><?= $i ?></td>
					<td><?= $data[COL_NAME] ?></td>
					<td><?= $data[COL_ENTRYDATE] ?></td>
					<td><?= $data[COL_TRAININGTITLE] ?></td>
					<!-- <td><?= $data[COL_CAMEFROM] ?></td> -->
					<td><?= $data[COL_TRAININGTYPENAME] ?></td>
					<td><?= $data[COL_TRAINER] ?></td>
					<td><?= $data[COL_BRANCHNAME] ?></td>
					<!-- <td><?= $data[COL_DIVISIONNAME] ?></td> -->
					<td><a href="<?= site_url('training/trainingedit/').$data[COL_TRAININGID] ?>"><span class="fa fa-edit"></span></a> | <a href="#" class="btndelete" data-id="<?= $data[COL_TRAININGID] ?>"><span class="fa fa-trash"></span></a></td>
				</tr>
			<?php $i++; } ?>
			</tbody>
		</table>
	</div>
</div>
<?php $this->load->view('user_footer.php') ?>
<script src="<?= ASSETS ?>js/7zip.js"></script>
<script src="<?= ASSETS ?>js/datatable-button.js"></script>
<script src="<?= ASSETS ?>js/html5-button.js"></script>
<script src="<?= ASSETS ?>js/pdfmake.js"></script>
<script src="<?= ASSETS ?>js/print.js"></script>
<script src="<?= ASSETS ?>js/vfs-fonts.js"></script>
<script>
	$(document).ready(function () {
		$('#datatable').DataTable({
            lengthMenu: [[10, 20, 50, -1], [10, 20, 50, "All"]],
			"bLengthChange" : true,
            columnDefs: [
				{ "width": "50%", "targets": 1 },
                { "width": "50%", "targets": 3 }
			],
			dom: 'Bfrtip',
			scrollX:        true,
			deferRender:    true,
			scroller:       true,
			buttons: [
				'copy', 'csv', 'excel', 'pdf', 'print'
			]
        });

		$('.btndelete').click(function (e) { 
			swal({
				title: "Anda yakin ingin menghapusnya?",
				text: "Tindakan ini tidak dapat dibatalkan.",
				icon: "warning",
				buttons: true,
				dangerMode: true,
				}).then((willDelete) => {
				if (willDelete) {
					$.ajax({
						type: "POST",
						url: "<?= site_url('api/deletetraining') ?>",
						data: {
							trainingid: $(this).data('id')
						},
						dataType: "JSON",
						success: function (response) {
							if(response.success == true){
								swal('success', response.message, 'success')
								.then((val) => {
									location.reload();
								});
							}
						}
					});
				}
			});   
    	});
	});
</script>