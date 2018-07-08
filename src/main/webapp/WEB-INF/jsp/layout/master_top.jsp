    <!-- <!DOCTYPE html> -->
            <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

            <html>
        <head>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%@  include file ="partials/head.jsp" %>

        </head>
        <body>


        <!-- Start Page Loading -->
        <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"  style="background: #37474F;"></div>
        <div class="loader-section section-right"  style="background: #37474F;"></div>
        </div>
        <!-- End Page Loading -->

        <!-- //////////////////////////////////////////////////////////////////////////// -->

        <!-- START HEADER -->
        <!-- navbar starts -->
        <div class="navbar-fixed nav-wrapper">
        <nav>
        <div class="container" style="margin: 0px;">
        <div class="left" style="height:50px;width:60px;padding: 4px;">
        <a href="#" class="brand-log"><img src="/static/assets/images/ku.png" alt="Nasime Aram System Logo" class="circle responsive-img" width="100%" id="logo"></a></div>
        <ul class="right" style="margin-right:40px;margin-top:5px;">


        </ul>

        </div>
        </nav>
        </div>
        <!--navbar ends -->
        <!-- END HEADER -->

        <!-- //////////////////////////////////////////////////////////////////////////// -->

        <!-- START MAIN -->
        <div id="main">
        <!-- START WRAPPER -->
        <div class="wrapper">

        <!-- START LEFT SIDEBAR NAV-->
        <aside id="left-sidebar-nav">
        <ul id="slide-out" class="side-nav fixed leftside-navigation">
        <li class="user-details cyan darken-2">
        <div class="row">
        <div class="col col s4 m4 l4">
        <img src="/static/assets/images/badar.jpg" class="circle responsive-img" width="100%" >


        </div>
        <div class="col col s8 m8 l8">
        <ul id="profile-dropdown" class="dropdown-content">

        <li><a href=""><i class="mdi-action-account-box"></i> Profile</a>
        </li>


        <li>
        <form method="post" action="logout" name="logout">
        <a class="mdi-action-exit-to-app" onclick="document.forms['logout'].submit();">Logout</a>

        </form>
        </li>
        </ul>
        <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn" href="#" data-activates="profile-dropdown">Hashimi<i class="mdi-navigation-arrow-drop-down right"></i></a>
        <p class="user-roal">Mohammad Badar</p>
        </div>
        </div><!-- END OF ROW -->
        </li>


        <%@ include file="partials/sidebar.jsp"%>

        <!-- START CONTAINER -->
        <div class="container" style="padding-top: 5px;">
        <div id="messi">