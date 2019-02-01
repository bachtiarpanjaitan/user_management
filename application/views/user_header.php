<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= APPNAME ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">


    <link rel="stylesheet" href="<?= ASSETS ?>vendors/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/themify-icons/css/themify-icons.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/selectFX/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/jqvmap/dist/jqvmap.min.css">
    <link rel="stylesheet" href="<?= ASSETS ?>vendors/datatables.net-bs4/css/dataTables.bootstrap4.min.css">

    <link rel="stylesheet" href="<?= ASSETS ?>css/style.css">
    <link rel="stylesheet" href="<?= ASSETS ?>css/sweetalert.css">
    <link rel="stylesheet" href="<?= ASSETS ?>css/select2.min.css">
    <!-- <link rel="stylesheet" href="<?= ASSETS ?>css/select2-bootstrap.css"> -->
    <script src="<?= ASSETS ?>vendors/jquery/dist/jquery.min.js"></script>
    <script src="<?= ASSETS ?>vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="<?= ASSETS ?>vendors/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="<?= ASSETS ?>vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="<?= ASSETS ?>vendors/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js"></script>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>


</head>

<body class="bg-light">
        <!-- Left Panel -->
<?php if(isLogin()){ ?>
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand"><?= APPNAME ?></a>
                <!-- <a id="menuToggle" class=" pull-left navbar-brand hidden" ><?= APPNAME ?></a> -->
            </div>

            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="<?= site_url() ?>"> <i class="menu-icon fa fa-dashboard"></i>Dashboard </a>
                    </li>
                    <h3 class="menu-title">Data</h3><!-- /.menu-title -->
                        <li class="menu-item-has-children dropdown">>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-group"></i>Training</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('training/addtraining') ?>">Add New Training</a></li>
                                <li><i class="menu-icon ti-list"></i><a href="<?= site_url('training/traininglist') ?>">Training Data</a></li>
                            </ul>
                        </li>
                        <!-- <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-group"></i>Expense</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-edit"></i><a href="">New Expense</a></li>
                                <li><i class="menu-icon ti-list"></i><a href="">Expense Data</a></li>
                            </ul>
                        </li> -->


                    <h3 class="menu-title">Master</h3><!-- /.menu-title -->

                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-group"></i>Branches</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('branch/addbranch') ?>">New Branches</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('branch/branchlist') ?>">Branches List</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-star"></i>Training Type</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('training/addtrainingtype') ?>">New Training Type</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('training/trainingtypelist') ?>">Training Type List</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-user"></i>User</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('user/adduser') ?>">New User</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('user/userlist') ?>">User List</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-user"></i>User Training</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('user/addemployee') ?>">New User Training</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('user/employeelist') ?>">User Training List</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-minus-circle"></i>Divisions</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('division/adddivision') ?>">New Division</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('division/divisionlist') ?>">Division List</a></li>
                        </ul>
                    </li>
                    <!-- <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-minus-circle"></i>Expense Type</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-edit"></i><a href="<?= site_url('expense/addexpensetype') ?>">New Expense Type</a></li>
                            <li><i class="menu-icon ti-list"></i><a href="<?= site_url('expense/expensetypelist') ?>">Expense Type List</a></li>
                        </ul>
                    </li> -->
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside><!-- /#left-panel -->
        <header id="header" class="header">

            <div class="header-menu">

                <div class="col-sm-7">
                    <!-- <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a> -->
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="<?= ASSETS ?>images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i> My Profile</a>
                            <form action="<?= site_url('user/logout') ?>">
                                <button class=" btn btn-default btn-block nav-link"> Logout</button>
                            </form>
                        </div>
                    </div>

                    <div class="language-select dropdown" id="language-select">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                            <i class="flag-icon flag-icon-us"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="language">
                            <div class="dropdown-item">
                                <span class="flag-icon flag-icon-fr"></span>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-es"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-us"></i>
                            </div>
                            <div class="dropdown-item">
                                <i class="flag-icon flag-icon-it"></i>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </header><!-- /header -->
        <!-- Header-->

    <?php  } ?>