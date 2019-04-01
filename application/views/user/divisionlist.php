<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
<div class="col col-md-12">
    <table class="table table-responsive table-hover" id="datatable">
        <thead>
            <th>No</th>
            <th>Nama Divisi</th>
            <th>Deskripsi</th>
            <th>Action</th>
        </thead>
        <tbody>
        <?php 
        $i = 1;
        foreach($division as $data){ ?>
            <tr>
            <td><?= $i ?></td>
            <td><?= $data[COL_DIVISIONNAME] ?></td>
            <td><?= $data[COL_DESCRIPTION] ?></td>
            <td><a href="<?= site_url('division/divisionedit/').$data[COL_DIVISIONID] ?>"><span class="fa fa-edit"></span></a> | <a href="javascript:void(0);" class="btndelete" data-id="<?= $data[COL_DIVISIONID] ?>"><span class="fa fa-trash"></span></a></td>
            </tr>
        <?php $i++; } ?>
        </tbody>
    </table>
</div>
<script>
    $(document).ready(function () {
        $('#datatable').DataTable({
            lengthMenu: [[10, 20, 50, -1], [10, 20, 50, "All"]],
            columnDefs: [
                { "width": "70%", "targets": 1 },
                { "width": "70%", "targets": 2 }
            ]
        });

        $('#datatable').on('click', '.btndelete', function() { 
            swal({
                title: "Anda yakin ingin menghpusnya?",
                text: "Tindakan ini tidak dapat dibatalkan.",
                icon: "warning",
                buttons: true,
                dangerMode: true,
                }).then((willDelete) => {
                if (willDelete) {
                   $.ajax({
                       type: "POST",
                       url: "<?= site_url('api/deletedivision') ?>",
                       data: {
                            id: $(this).data('id')
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
<?php $this->load->view('user_footer.php') ?>