<?php $this->load->view('user_header.php');
	if(!islogin()){
		redirect('user/viewlogin');
	}
?>
    <div >

        <div class="content mt-3">
            <div class="col-sm-6 col-lg-4">
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
            </div>
            <!--/.col-->
            <div class="col-sm-6 col-lg-4">
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
            </div>
            <!--/.col-->
            <div class="col-sm-6 col-lg-4">
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
            </div>
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
        </div> <!-- .content -->
    </div><!-- /#right-panel -->
<?php $this->load->view('user_footer.php') ?>