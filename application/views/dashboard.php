<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
    <style>
        .rotate90 {
            -webkit-transform: rotate(90deg);
            -moz-transform: rotate(90deg);
            -o-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            transform: rotate(90deg);
            width: 50%;
            height:50%;
        }
    </style>
    <div >
        <!-- ##### Hero Area Start ##### -->
       
       <div class="container container-fluid">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 tales" src="<?= ASSETS ?>images/1.jpg" alt="First slide">
                   <div class="carousel-caption d-none d-md-block">
                        <h5>Title Pertama</h5>
                        <p>Description Pertama</p>
                    </div>		
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 tales" src="<?= ASSETS ?>images/2.jpg" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Title Kedua</h5>
                        <p>Description Kedua</p>
                    </div>	
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100 tales" src="<?= ASSETS ?>images/3.jpg" alt="Third slide">
                     <div class="carousel-caption d-none d-md-block">
                        <h5>Title Ketiga</h5>
                        <p>Description Ketiga</p>
                    </div>	
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
       </div>
        <!-- ##### Hero Area End ##### -->
        <div class="content mt-3">
            <!-- <div class="col-sm-6 col-lg-4">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <h4 class="mb-0">
                            <span class="count h2"><?= $usercount ?></span>
                        </h4>
                        <p class="text-light">Registered User</p>

                        <div class="chart-wrapper px-0" style="height:70px;" height="70">
                            <canvas id="widgetChart1"></canvas>
                        </div>

                    </div>

                </div>
            </div> -->
            <!--/.col-->
            <!-- <div class="col-sm-6 col-lg-4">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <h4 class="mb-0">
                            <span class="count h2"><?=  $trainingcount ?></span>
                        </h4>
                        <p class="text-light">Training Process</p>

                        <div class="chart-wrapper px-0" style="height:70px;" height="70">
                            <canvas id="widgetChart1"></canvas>
                        </div>

                    </div>

                </div>
            </div> -->
            <!--/.col-->
            <!-- <div class="col-sm-6 col-lg-4">
                <div class="card text-white bg-flat-color-1">
                    <div class="card-body pb-0">
                        <h4 class="mb-0">
                            <span class="count h2"><?= $employeecount ?></span>
                        </h4>
                        <p class="text-light">Employees Training</p>

                        <div class="chart-wrapper px-0" style="height:70px;" height="70">
                            <canvas id="widgetChart1"></canvas>
                        </div>

                    </div>

                </div>
            </div> -->
            <!--/.col-->

            <div class="col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h4 class="card-title mb-0">5 Recently Trainings</h4>
                                <div class="small text-muted"><?= date('F Y') ?></div>
                            </div>
                            <!--/.col-->
                        </div>
                        <!--/.row-->
                        <table class="table table-hover table-striped">
                            <thead>
                            <th>NAME</th>
                            <th>TRAINING TYPE</th>
                            <th>BRANCH</th>
                            </thead>
                            <tbody>
                                <?php foreach ($recenttraining as $data) { ?>
                                    <tr>
                                    <td><?= $data[COL_NAME] ?></td>
                                    <td><?= $data[COL_TRAININGTYPENAME] ?></td>
                                    <td><?= $data[COL_BRANCHNAME] ?></td>
                                </tr>
                               <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6">
                                <h4 class="card-title mb-0">5 Recently User Registered</h4>
                                <div class="small text-muted"><?= date('F Y') ?></div>
                            </div>
                            <!--/.col-->
                        </div>
                        <!--/.row-->
                        <table class="table table-hover table-striped">
                            <thead>
                            <th>NAME</th>
                            <th>NIPP</th>
                            <th>BRANCH</th>
                            </thead>
                            <tbody>
                                <?php foreach ($recentuser as $data) { ?>
                                    <tr>
                                    <td><?= $data[COL_FULLNAME] ?></td>
                                    <td><?= $data[COL_NIPP] ?></td>
                                    <td><?= $data[COL_BRANCHNAME] ?></td>
                                </tr>
                               <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-xl-12">
                <div id="accordion">
                    <div class="card">
                        <div class="card-header">
                        <a class="card-link" data-toggle="collapse" href="#calendar">
                           Calendar
                        </a>
                        </div>
                        <div id="calendar" class="collapse show" data-parent="#accordion">
                        <div class=" card-body" >
                           <div style="background-image: url(<?= ASSETS ?>images/calendar.jpeg) !important" ></div>
                           <div class="img-thumbnail" >
                                <img src="<?= ASSETS ?>images/calendar.jpeg" class="" alt="">
                           </div>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- .content -->
    </div><!-- /#right-panel -->
<?php $this->load->view('user_footer.php') ?>