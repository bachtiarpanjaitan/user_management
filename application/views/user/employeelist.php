<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
    }
?>
<div class="col col-md-12">
<table class="table table-responsive table-hover" id="datatable">
        <thead>
            <th>No</th>
            <th>Name</th>
            <th>NIPP</th>
            <!-- <th>Email</th> -->
            <!-- <th>Address</th> -->
            <!-- <th>Came From</th> -->
            <!-- <th>Entry Date</th> -->
            <!-- <th>Lenght Of Work</th> -->
            <th>Action</th>
        </thead>
        <tbody>
        <?php 
        $i = 1;
        foreach($employee as $data){ ?>
            <tr>
            <td><?= $i ?></td>
            <td><?= $data[COL_NAME] ?></td>
            <td><?= $data[COL_NIPP] ?></td>
            <!-- <td><?= $data[COL_EMAIL] ?></td> -->
            <!-- <td><?= $data[COL_ADDRESS] ?></td> -->
            <!-- <td><?= $data[COL_CAMEFROM] ?></td> -->
            <!-- <td><?= $data[COL_ENTRYDATE] ?></td> -->
            <!-- <td><?= $data[COL_LENGHTOFWORK] ?></td> -->
            <td><a href="<?= site_url('user/employeeedit/').$data[COL_EMPLOYEETRAININGID] ?>"><span class="fa fa-edit"></span></a> | <a href="javascript:void(0);" class="btndelete" data-id="<?= $data[COL_EMPLOYEETRAININGID] ?>"><span class="fa fa-trash"></span></a></td>
            </tr>
        <?php $i++; } ?>
        </tbody>
    </table>
</div>
<?php $this->load->view('user_footer.php') ?>
<script>
$(document).ready(function () {
    $('#datatable').DataTable({
            lengthMenu: [[10, 20, 50, -1], [10, 20, 50, "All"]],
            columnDefs: [
                { "width": "20%", "targets": 1 },
                { "width": "20%", "targets": 2 }
            ]
    });
    $('#datatable').on('click', '.btndelete', function() { 
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
                    url: "<?= site_url('api/deleteemployee') ?>",
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