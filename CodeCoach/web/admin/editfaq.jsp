<%-- 
    Document   : editfaq
    Created on : Jun 8, 2023, 3:43:41 PM
    Author     : Duy Thai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
    <title>Mentoring - Add Blog Page</title>

    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

    <link rel="stylesheet" href="assets/css/feathericon.min.css">

    <link rel="stylesheet" href="assets/plugins/select2/css/select2.min.css">

    <link rel="stylesheet" href="../assets/plugins/datatables/datatables.min.css">

    <link rel="stylesheet" href="../assets/css/style.css">
    </head>
    <body>
        <div class="main-wrapper">

            <div class="header">

                <div class="header-left">
                    <a href="index.html" class="logo">
                        <img src="assets/img/logo.png" alt="Logo">
                    </a>
                    <a href="index.html" class="logo logo-small">
                        <img src="assets/img/logo-small.png" alt="Logo" width="30" height="30">
                    </a>
                </div>

                <a href="javascript:void(0);" id="toggle_btn">
                    <i class="fe fe-text-align-left"></i>
                </a>
                <div class="top-nav-search">
                    <form>
                        <input type="text" class="form-control" placeholder="Search here">
                        <button class="btn" type="submit"><i class="fa fa-search"></i></button>
                    </form>
                </div>

                <a class="mobile_btn" id="mobile_btn">
                    <i class="fa fa-bars"></i>
                </a>


                <ul class="nav user-menu">

                    <li class="nav-item dropdown noti-dropdown">
                        <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                            <i class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
                        </a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span class="notification-title">Notifications</span>
                                <a href="javascript:void(0)" class="clear-noti"> Clear All </a>
                            </div>
                            <div class="noti-content">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media d-flex">
                                                <span class="avatar avatar-sm flex-shrink-0">
                                                    <img class="avatar-img rounded-circle" alt="User Image"
                                                         src="assets/img/user/user.jpg">
                                                </span>
                                                <div class="media-body flex-grow-1">
                                                    <p class="noti-details"><span class="noti-title">Jonathan Doe</span>
                                                        Schedule <span class="noti-title">his appointment</span></p>
                                                    <p class="noti-time"><span class="notification-time">4 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media d-flex">
                                                <span class="avatar avatar-sm flex-shrink-0">
                                                    <img class="avatar-img rounded-circle" alt="User Image"
                                                         src="assets/img/user/user1.jpg">
                                                </span>
                                                <div class="media-body flex-grow-1">
                                                    <p class="noti-details"><span class="noti-title">Julie Pennington</span>
                                                        has booked her appointment to <span class="noti-title">Ruby
                                                            Perrin</span></p>
                                                    <p class="noti-time"><span class="notification-time">6 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media d-flex">
                                                <span class="avatar avatar-sm flex-shrink-0">
                                                    <img class="avatar-img rounded-circle" alt="User Image"
                                                         src="assets/img/user/user2.jpg">
                                                </span>
                                                <div class="media-body flex-grow-1">
                                                    <p class="noti-details"><span class="noti-title">Tyrone Roberts</span>
                                                        sent a amount of $210 for his <span
                                                            class="noti-title">appointment</span></p>
                                                    <p class="noti-time"><span class="notification-time">8 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="notification-message">
                                        <a href="#">
                                            <div class="media d-flex">
                                                <span class="avatar avatar-sm flex-shrink-0">
                                                    <img class="avatar-img rounded-circle" alt="User Image"
                                                         src="assets/img/user/user4.jpg">
                                                </span>
                                                <div class="media-body flex-grow-1">
                                                    <p class="noti-details"><span class="noti-title">Patricia Manzi</span>
                                                        send a message <span class="noti-title"> to his Mentee</span></p>
                                                    <p class="noti-time"><span class="notification-time">12 mins ago</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="topnav-dropdown-footer">
                                <a href="#">View all Notifications</a>
                            </div>
                        </div>
                    </li>


                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/profiles/avatar-12.jpg"
                                                        width="31" alt="Ryan Taylor"></span>
                        </a>
                        <div class="dropdown-menu">
                            <div class="user-header">
                                <div class="avatar avatar-sm">
                                    <img src="assets/img/profiles/avatar-12.jpg" alt="User Image"
                                         class="avatar-img rounded-circle">
                                </div>
                                <div class="user-text">
                                    <h6>Allen Davis</h6>
                                    <p class="text-muted mb-0">Administrator</p>
                                </div>
                            </div>
                            <a class="dropdown-item" href="profile.html">My Profile</a>
                            <a class="dropdown-item" href="settings.html">Settings</a>
                            <a class="dropdown-item" href="login.html">Logout</a>
                        </div>
                    </li>

                </ul>

            </div>


            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="menu-title">
                                <span><i class="fe fe-home"></i> Main</span>
                            </li>
                            <li>
                                <a href="index.html"><span>Dashboard</span></a>
                            </li>
                            <li>
                                <a href="mentor.html"><span>Mentor</span></a>
                            </li>
                            <li>
                                <a href="mentee.html"><span>Mentee</span></a>
                            </li>
                            <li>
                                <a href="booking-list.html"><span>Booking List</span></a>
                            </li>
                            <li>
                                <a href="categories.html"><span>Categories</span></a>
                            </li>
                            <li>
                                <a href="transactions-list.html"><span>Transactions</span></a>
                            </li>
                            <li>
                                <a href="settings.html"><span>Settings</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><span> Reports</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="invoices.html">Invoices List</a></li>
                                    <li><a href="invoice-grid.html">Invoices Grid</a></li>
                                    <li><a href="add-invoice.html">Add Invoices</a></li>
                                    <li><a href="edit-invoice.html">Edit Invoices</a></li>
                                    <li><a href="view-invoice.html">Invoice Details</a></li>
                                    <li><a href="invoices-settings.html">invoice settings</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="invoice-items.html"><span>Items</span></a>
                            </li>
                            <li class="menu-title">
                                <span><i class="fe fe-document"></i> Pages</span>
                            </li>
                            <li>
                                <a href="profile.html"><span>My Profile</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><span>Blog</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="blog.html"> Blog </a></li>
                                    <li><a href="blog-details.html"> Blog Details </a></li>
                                    <li><a class="active" href="add-blog.html"> Add Blog </a></li>
                                    <li><a href="edit-blog.html"> Edit Blog </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><span> Authentication </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="login.html"> Login </a></li>
                                    <li><a href="register.html"> Register </a></li>
                                    <li><a href="forgot-password.html"> Forgot Password </a></li>
                                    <li><a href="lock-screen.html"> Lock Screen </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><span> Error Pages </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="error-404.html">404 Error </a></li>
                                    <li><a href="error-500.html">500 Error </a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="blank-page.html"><span>Blank Page</span></a>
                            </li>
                            <li class="menu-title">
                                <span><i class="fe fe-star-o"></i> UI Interface</span>
                            </li>
                            <li>
                                <a href="components.html"><span>Components</span></a>
                            </li>
                            <li class="submenu">
                                <a href="#"><span> Forms </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="form-basic-inputs.html">Basic Inputs </a></li>
                                    <li><a href="form-input-groups.html">Input Groups </a></li>
                                    <li><a href="form-horizontal.html">Horizontal Form </a></li>
                                    <li><a href="form-vertical.html"> Vertical Form </a></li>
                                    <li><a href="form-mask.html"> Form Mask </a></li>
                                    <li><a href="form-validation.html"> Form Validation </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="#"><span> Tables </span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li><a href="tables-basic.html">Basic Tables </a></li>
                                    <li><a href="data-tables.html">Data Table </a></li>
                                </ul>
                            </li>
                            <li class="submenu">
                                <a href="javascript:void(0);"><span>Multi Level</span> <span class="menu-arrow"></span></a>
                                <ul style="display: none;">
                                    <li class="submenu">
                                        <a href="javascript:void(0);"> <span>Level 1</span> <span
                                                class="menu-arrow"></span></a>
                                        <ul style="display: none;">
                                            <li><a href="javascript:void(0);"><span>Level 2</span></a></li>
                                            <li class="submenu">
                                                <a href="javascript:void(0);"> <span> Level 2</span> <span
                                                        class="menu-arrow"></span></a>
                                                <ul style="display: none;">
                                                    <li><a href="javascript:void(0);">Level 3</a></li>
                                                    <li><a href="javascript:void(0);">Level 3</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0);"> <span>Level 1</span></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="page-wrapper">
                <div class="content container-fluid">

                    <div class="page-header">
                        <div class="row">
                            <div class="col-sm-12">
                                <h3 class="page-title">Add Blog</h3>
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Add Blog</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-12 blog-details">
                                            <form>
                                                <div class="form-group">
                                                    <label>Blog Name</label>
                                                    <input class="form-control" type="text">
                                                </div>
                                                <div class="form-group">
                                                    <label>Blog Images</label>
                                                    <div>
                                                        <input class="form-control" type="file">
                                                        <small class="form-text text-muted">Max. file size: 50 MB. Allowed
                                                            images: jpg, gif, png. Maximum 10 images only.</small>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Blog Category</label>
                                                            <select class="select select2-hidden-accessible form-control"
                                                                    tabindex="-1" aria-hidden="true">
                                                                <option>Web Design</option>
                                                                <option>Web Development</option>
                                                                <option>App Development</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label>Blog Sub Category</label>
                                                            <select class="select select2-hidden-accessible form-control"
                                                                    tabindex="-1" aria-hidden="true">
                                                                <option>Html</option>
                                                                <option>Css</option>
                                                                <option>Javascript</option>
                                                                <option>PHP</option>
                                                                <option>Codeignitor</option>
                                                                <option>iOS</option>
                                                                <option>Android</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Blog Description</label>
                                                    <textarea cols="30" rows="6" class="form-control"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label class="display-block w-100">Blog Status</label>
                                                    <div>
                                                        <div class="form-check form-radio form-check-inline">
                                                            <input class="form-check-input" id="active" name="active-blog"
                                                                   value="active" type="radio" checked>
                                                            <label class="form-check-label" for="active">Active</label>
                                                        </div>
                                                        <div class="form-check form-radio form-check-inline">
                                                            <input class="form-check-input" id="inactive" name="active-blog"
                                                                   value="inactive" type="radio">
                                                            <label class="form-check-label" for="inactive">Inactive</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="m-t-20 text-center">
                                                    <button class="btn btn-primary btn-lg">Publish Blog</button>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <script src="assets/js/jquery-3.6.0.min.js"></script>

        <script src="assets/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/feather.min.js"></script>

        <script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="assets/plugins/select2/js/select2.min.js"></script>

        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/datatables.min.js"></script>

        <script src="assets/js/script.js"></script>
    </body>
</html>
