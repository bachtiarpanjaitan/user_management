<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
	<form action="">
		<div class="col-md-6" class="row">
			<input type="hidden" id="id" value="<?= $edit? $sppt['spptid']:'' ?>">
			<div class="form-group">
				<div class="row col-md-12">
					<div class="col-md-6">
						<div class="form-group">
							<label for="">File SPPT</label>
							<div class="dropzone dropzonearea" id="imageupload"></div>
							<div id="template">
								<div class="dz-preview dz-file-preview" id="dz-preview-template">
									<div class="dz-details">
										<div class="dz-filename"><span data-dz-name></span></div>
										<div class="dz-size" data-dz-size></div>
									</div>
									<div class="dz-progress"><span class="dz-upload" data-dz-uploadprogress></span>
									</div>
									<div class="dz-success-mark"><span></span></div>
									<div class="dz-error-mark"><span></span></div>
									<div class="dz-error-message"><span data-dz-errormessage></span></div>
								</div>
							</div>
							<input type="hidden" id="images" value="<?= $edit?$sppt['file']:'' ?>">
						</div>
					</div>
					<div class="col-md-6">
						<label for="">Foto Terpilih</label>
						<div id="imgthumbnail"><img
								src="<?= ASSETS ?>images/<?= $edit?$sppt['file']: 'default.jpg' ?>" width="150px"
								height="125px" class="img img-responsive img-thumbnail" alt=""></div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="tanggaltugas">Tanggal Tugas</label>
				<input type='text'  class="form-control datetimepicker" id="tanggaltugas"
					value="<?= $edit? $sppt['tanggaltugas']:'' ?>">
			</div>
            <div class="form-group">
                <label for="vendor">Vendor</label>
                <select name="vendor" id="vendor" class="form-control select2 ">
                    <option value="">Pilih Vendor</option>
                    <?php foreach($vendor as $u){ ?>
                        <option <?= $edit && $sppt['vendorid'] == $u['vendorid']? 'selected':'' ?> value="<?= $u['vendorid'] ?>"><?= $u['vendorname'] ?></option>
                    <?php } ?>
                </select>
            </div>
            <div class="form-group">
                <label for="description">Lokasi</label>
                <textarea name="lokasi" id="lokasi" cols="30" rows="5" class="form-control"><?= $edit? $sppt['lokasi']:'' ?></textarea>
            </div>
            <div class="form-group">
                <label for="judul">Judul Training</label>
                <textarea name="judul" id="judul" cols="30" rows="5" class="form-control"><?= $edit? $sppt['judultraining']:'' ?></textarea>
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

    Dropzone.autoDiscover = false;
    $("#imageupload").dropzone({
        url: "<?= site_url('api/uploadimage') ?>",
        paramName: 'base64',
        clickable: true,
        maxFiles: 1,
        uploadMultiple: false,
        autoProcessQueue: true,
        dictDefaultMessage: "Upload Gambar",
        previewTemplate: document.querySelector('#template').innerHTML,
        addRemoveLinks: true,
        acceptedFiles: 'image/*',
        maxFilesize: 2,
        accept: function (file, done) {
            reader = new FileReader();
            reader.onload = handleReaderLoad;
            reader.readAsDataURL(file);

            function handleReaderLoad(evt) {
                var file = evt.target.result;
                var name = file.name;
                var type = file.type;
                $.ajax({
                    method: "POST",
                    timeout: 2000,
                    url: "<?= site_url('api/uploadimage') ?>",
                    data: {
                        base64: file,
                        filename: name,
                        filetype: type
                    },
                    success: function (response) {
                        var val = JSON.parse(response);
                        // console.log(val);
                        if (val.success == true) {
                            $('#imgthumbnail').empty();
                            $('#images').val(val.filename);
                            var content = '<img src="<?= ASSETS ?>images/' + val.filename +
                                '" class="img-responsive img-thumbnail">';
                            $('#imgthumbnail').append(content);
                        }
                    }
                });
            }
            done();
        }
    });

	$(document).ready(function () {
		$('.select2').select2();

		$('#btnsave').click(function (e) {
			if ($('#images').val() == "") {
				swal('error', 'File tidak boleh kosong', 'error');
				return false;
			}
			if ($('#tanggaltugas').val() == "") {
				swal('error', 'Tanggal Tugas tidak boleh kosong', 'error');
				return false;
			}
			if ($('#vendor').val() == "") {
				swal('error', 'Vendor tidak boleh kosong', 'error');
				return false;
			}
			if ($('#lokasi').val() == "") {
				swal('error', 'Lokasi tidak boleh kosong', 'error');
				return false;
			}
            if ($('#judul').val() == "") {
				swal('error', 'Judul Training tidak boleh kosong', 'error');
				return false;
			}
			
			$.ajax({
				type: "POST",
				url: "<?= site_url('api/savesppt') ?>",
				data: {
					file: $('#images').val(),
					tanggaltugas: $('#tanggaltugas').val(),
					vendorid: $('#vendor').val(),
					judul: $('#judul').val(),
					lokasi: $('#lokasi').val(),
					id: $('#id').val(),
					edit: <?= $edit?'1':'0' ?>,
				},
				dataType: "JSON",
				success: function (response) {
					if (response.success == true) {
						swal('success', response.message, 'success')
							.then((val) => {
								location.reload();
							});
					} else {
						swal('error', response.message, 'error');
					}
				}
			});

		});
	});

</script>
