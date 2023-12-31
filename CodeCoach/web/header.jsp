<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <c:set var="users" value="${sessionScope.users}"/>
    <div class="main-wrapper">
        <header class="header">
            <div class="header-fixed">
                <nav class="navbar navbar-expand-lg header-nav">
                    <div class="navbar-header">
                        <a id="mobile_btn" href="javascript:void(0);">
                            <span class="bar-icon">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </a>
                        <a href="/home" class="navbar-brand logo">
                            <img src="assets/img/logo.png" class="img-fluid" alt="Not Found" onerror=this.src="../assets/img/logo.png">
                        </a>
                    </div>
                    <div class="main-menu-wrapper">
                        <div class="menu-header">
                            <a href="/home" class="menu-logo">
                                <img src="assets/img/logo.png" class="img-fluid" alt="Logo">
                            </a>
                            <a id="menu_close" class="menu-close" href="javascript:void(0);">
                                <i class="fas fa-times"></i>
                            </a>
                        </div>
                        <ul class="main-nav">
                            <li class="has-submenu">
                                <a href="home">Home <i class="fas"></i></a>
                            </li>

                            <c:if test="${users.roleId == 2 || users.roleId == 1}">
                                <li class="has-submenu">
                                    <a href>Mentor <i class="fas fa-chevron-down"></i></a>
                                    <ul class="submenu">
                                        <li><a href="">Mentor Dashboard</a></li>
                                        <li><a href="">Notification</a></li>
                                        <li><a onclick="ViewBooking()">View Booking</a></li>
                                        <li><a href="">Review</a></li>
                                        <li><a href="">Invoices</a></li>
                                        <li><a href="">Profile Settings</a></li>                                      
                                    </ul>
                                </li>
                            </c:if>


                            <li class="has-submenu">
                                <a href>Mentee <i class="fas fa-chevron-down"></i></a>
                                <ul class="submenu">
                                    <li><a href="">Mentee Dashboard</a></li>
                                    <li><a href="">Notification</a></li>
                                    <li><a onclick="Bookings()">Booking</a></li>
                                    <li><a href="">Favourites</a></li>
                                    <li><a href="">Invoices</a></li>
                                    <li><a href="">Profile Settings</a></li>
                                        <c:if test="${users.userId==3}">
                                        <li><a href="mentorregister">Mentor Register</a></li>
                                        </c:if>

                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href>Search mentor <i class="fas"></i></a>

                            </li>
                            <li class="has-submenu">
                                <a href="listchat">Chat <i class="fas "></i></a>
                            </li>
                            <li class="has-submenu">
                                <a href="contactus">Contact Us <i class="fas "></i></a>
                            </li>
                            <!--Admin button-->
                            <c:if test="${users.roleId == 1}">
                                <li>
                                    <a href="admindashboard" target="_blank">Admin</a>
                                </li>
                            </c:if>
                            <!--end of Admin button-->

                            <li class="login-link">
                                <a href="login">Login / Signup</a>
                            </li>
                        </ul>
                    </div>

                    <!-- login header -->
                    <c:if test="${not empty users.fName}">
                        <ul class="nav header-navbar-rht">
                            <li class="nav-item dropdown nav has-arrow logged-item header-navbar-rht">
                                <a href="" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                                    <span class="user-img">
                                        <img class="rounded-circle" src="assets/images/users/${users.userId}.png" width="31" onerror=this.src="assets/images/users/default.png" width="31"
                                             alt="">
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <div class="user-header">
                                        <div class="avatar avatar-sm">
                                            <img src="assets/images/users/${users.userId}.png" alt="User Image"
                                                 class="avatar-img rounded-circle">
                                        </div>
                                        <div class="user-text">
                                            <h6>${users.lName} ${users.fName}</h6>
                                            <p class="text-muted mb-0"><c:if test="${users.roleId == 1}">Admin</c:if><c:if test="${users.roleId == 2}">Mentor</c:if><c:if test="${users.roleId == 3}">Mentee</c:if></p>
                                            </div>
                                        </div>
                                    <c:choose>
                                        <c:when test="${users.roleId == 2}">
                                            <a class="dropdown-item" onclick="ProfileSettingMentor()">Profile Settings</a>
                                        </c:when>
                                        <c:when test="${users.roleId == 3}">
                                            <a class="dropdown-item" onclick="ProfileSettingMentee()">Profile Settings</a>
                                        </c:when>
                                    </c:choose>
                                    <a class="dropdown-item" href="changepassword.jsp">Change Password</a>
                                    <a class="dropdown-item" href="logout">Logout</a>
                                </div>
                            </li>

                        </ul>
                    </c:if>
                    <!-- end of login header -->


                    <!-- default header -->
                    <c:if test="${empty users.fName}">
                        <ul class="nav header-navbar-rht">

                            <li class="nav-item">
                                <a class="nav-link" href="login">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link header-login" href="register">Register</a>
                            </li>

                        </ul>
                    </c:if>
                    <!-- end of default header -->
                </nav>
            </div>
        </header>
    </div>
    <script>
        function ViewBooking() {
            window.location.href = "viewbooking";
        }
        function ProfileSettingMentor() {
            window.location.href = "profilesetting-mentor";
        }
        function ProfileSettingMentee() {
            window.location.href = "profilesetting-mentee";
        }
        function Bookings() {
            window.location.href = "bookings";
        }
    </script>
</html>
