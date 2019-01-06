
<?php include_once('user_header.php') ?>
<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <form method="POST" action="<?= site_url('user/login') ?>">
                    <input type="hidden" name="ajax" id="" value="0">
                    <div class="form-group">
                        <?php if($error != ""){ ?>
                            <div class="alert alert-danger"><?= $error ?></div>
                        <?php } ?>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="Username" id="Username" class="form-control" placeholder="Your Username" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="Password" id="Password" class="form-control" placeholder="Your Password" required>
                    </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Remember Me
                            </label>
                            <label class="pull-right">
                                <a href="#">Forgotten Password?</a>
                            </label>
                        </div>
                        <button type="submit" id="btnlogin" class="btn btn-success btn-flat m-b-30 m-t-30">Sign in</button>
                            <div class="register-link m-t-15 text-center">
                                <p>Don't have account ? <a href="#"> Sign Up Here</a></p>
                            </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        // $('#btnlogin').click(function (e) { 
        //     var username = $('#Username').val();
        //     var password = $('#Password').val();
        //     if(!username){
        //         swal('Error', 'Please Fill Username', 'error');
        //         return true;
        //     }
        //     if(!password){
        //         swal('Error', 'Please Fill Password', 'error');
        //         return true;
        //     }

        //    $.ajax({
        //        method: "POST",
        //        url: "<?= site_url('user/login') ?>",
        //        data: {
        //            Username: username,
        //            Password: password
        //        },
        //        dataType: "JSON",
        //        success: function (response) {
        //            console.log(response);
        //            if(response.success == true ){
        //                swal("Cannot Login", response.text, response.type);
        //            }else if(response.type == 'success'){
        //                window.location = '<?= site_url("user/dashboard")?>';
        //            }
        //        }
        //    });
        // });
    });
</script>
<?php include_once('user_footer.php') ?>
