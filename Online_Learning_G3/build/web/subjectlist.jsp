<%-- 
    Document   : subjectlist
    Created on : May 29, 2022, 8:15:46 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <!--<meta charset="UTF-8">-->
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

        <meta charset="utf-8">
        <title>eLEARNING - eLearning HTML Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">

        <script src="js/myjs.js" ></script>
        <script src="js/dashboard.js" ></script>
            <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/cusdes.css" rel="stylesheet">

    </head>
    <body>
  <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <i class="fas fa-laugh-wink"></i>
                    </div>
                    <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Page
                </div>
                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                       aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Course</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Course:</h6>
                            <a class="collapse-item" href="buttons.html">View</a>
                            <a class="collapse-item" href="cards.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                       aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Blog</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Custom Blog:</h6>
                            <a class="collapse-item" href="utilities-color.html">View</a>
                            <a class="collapse-item" href="utilities-border.html">Manage</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Addons
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                       aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Lesson</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Lesson Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"
                       aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>User</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">User Custom:</h6>
                            <a class="collapse-item" href="login.html">View</a>
                            <a class="collapse-item" href="register.html">Manage</a>
                            <div class="collapse-divider"></div>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Charts -->
                <li class="nav-item">
                    <a class="nav-link" href="charts.html">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>


                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>

                        <div class="container-fluid">
            <div class="row">
           
                <%ArrayList<Course> courses = (ArrayList<Course>) request.getAttribute("course");

                %>
                <main class="col-md-12 ms-sm-auto col-lg-12 px-md-4">
                    <div id="formsearch" class="my-5">
                        <!--<h3>Search</h3>-->
                        <form action="subjectlist"  method="get" class="requires-validation " is-validated>
                            <div class="d-flex justify-content-between">
                                <input style="display:none;" value="search" name="action">
                                <div class="col-md-3" >
                                    <label class="" for="name">Name</label>
                                    <input id="name" value="${searchname}" class="form-control" type="text" name="name" placeholder="Input name to search" >

                                </div>
                                <div class="col-md-3">
                                    <label class="" for="category">Grade Category </label>
                                    <select name="category" id="category" class="form-select" >
                                        <option value="">
                                            All
                                        </option>
                                        <c:forEach var="a" items="${requestScope.category}">
                                            <option value="${a.id}"  ${searchcategory eq a.id ?"selected":""}
                                                    >${a.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="" for="subcategory">Subject Category </label>
                                    <select name="subcategory" id="subcategory" class="form-select" >
                                        <option value="">
                                            All
                                        </option>
                                        <c:forEach var="a" items="${requestScope.subcategory}">
                                            <option value="${a.id}"  ${searchsubcategory eq a.id ?"selected":""}
                                                    >${a.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-md-3">
                                    <label class="" for="status">Status </label>
                                    <select name="status" id="status" class="form-select" >
                                        <option value="">
                                            All
                                        </option>
                                        <c:forEach var="a" items="${requestScope.status}">
                                            <option value="${a.name}"  ${searchstatus eq a.name ?"selected":""}
                                                    >${a.name}</option>
                                        </c:forEach>


                                    </select>
                                </div>
                            </div>

                            <input style="float:right;" id="ip1" class="btn btn-dark btn-outline-light mb-5 mt-2" type="submit" value="Search">
                            <a href="subjectlist" style="float:right;" id="ip1" class="btn btn-primary   mb-5 mt-2 mx-2" type="button">Reset</a>

                        </form>
                    </div>
                    <a href="addsubject" id="ip1" class="btn btn-primary   mb-5 mt-2 mx-2" type="button">Create New Course</a>


                    <div class="mb-4" style="clear: both; border: solid black 1px;">
                        <div class="table-responsive ">
                            <table class="table table-bordered table-hover  " style=" margin-bottom: 0px; font-size: 15px; " > 
                                <tr class="table-primary">
                                    <th>
                                        ID 
                                    </th>
                                    <th >
                                        Name 
                                    </th>
                                    <th >
                                        Grade
                                    </th>
                                    <th >
                                        Subject
                                    </th>
                                    <th >
                                        Number of lessons
                                    </th>
                                    <th >
                                        Owner 
                                    </th>
                                    <th >
                                        Status
                                    </th>
                                    <th>

                                    </th>

                                </tr>
                                <%for (Course o : courses) {%>
                                <tr>
                                    <td>
                                        #<%=o.getId()%>
                                    </td>
                                    <td >
                                        <%=o.getName()%>
                                    </td>
                                    <td >
                                        <%=o.getCategorycourse().getCategorycourse().getName()%>
                                    </td>
                                    <td >
                                        <%=o.getCategorycourse().getSubcategorycourse().getName()%>
                                    </td>
                                    <td >
                                        <%=o.getNumberoflessons()%>
                                    </td>
                                    <td >
                                        <%=o.getOwner_fullname()%>
                                    </td>
                                    <td >
                                        <%=o.getStatus_name()%>
                                    </td>

                                    <td >
                                        <a href="subjectdetails?id=<%=o.getId()%>&view=true"  class=""><i class="fa-solid fa-eye"></i>View </a>
                                        <a href="subjectdetails?id=<%=o.getId()%>"  class=""><i class="fa-solid fa-pen"></i>Edit </a>
                                    </td>
                                </tr>
                                <%}%>
                            </table>
                        </div> 
                    </div>
                </main>

            </div>
        </div>


        <nav  aria-label="Page navigation" id="pager">
            <ul class="pagination justify-content-end pagination-sm mr-5">
                <c:if test="${link eq ''}">
                    <li class="page-item ${pageindex==1 ?"disabled":""}" >
                        <a class="page-link" href="?page=1" tabindex="-1">First</a>
                    </li> 
                    <c:if test="${pageindex>1}">
                        <li class="page-item"><a class="page-link" href="?page=${pageindex-1}">${pageindex-1}</a></li>
                        </c:if>
                        <c:forEach begin="0" end="2" var="i">
                            <c:if test="${pageindex+i<=total}">
                            <li class="page-item ${i==0?"active":""}"><a class="page-link" href="?page=${pageindex+i}">${pageindex+i}</a></li>
                            </c:if>
                        </c:forEach>

                    <c:if test="${pageindex+2<total}">
                        <li class="page-item "><a class="page-link" href="?page=${pageindex+2}">${pageindex+2}</a></li>
                        </c:if>
                    <li class="page-item ${pageindex==total ? "disabled":""}">
                        <a class="page-link" href="?page=${total}">Last</a>
                    </li>
                </c:if>
                <c:if test="${link ne ''}">
                    <li class="page-item ${pageindex==1 ?"disabled":""}" >
                        <a class="page-link" href="${link}&page=1" tabindex="-1">First</a>
                    </li> 
                    <c:if test="${pageindex>1}">
                        <li class="page-item"><a class="page-link" href="${link}&page=${pageindex-1}">${pageindex-1}</a></li>
                        </c:if>
                        <c:forEach begin="0" end="2" var="i">
                            <c:if test="${pageindex+i<=total}">
                            <li class="page-item ${i==0?"active":""}"><a class="page-link" href="${link}&page=${pageindex+i}">${pageindex+i}</a></li>
                            </c:if>
                        </c:forEach>

                    <c:if test="${pageindex+2<total}">
                        <li class="page-item "><a class="page-link" href="${link}&page=${pageindex+2}">${pageindex+2}</a></li>
                        </c:if>
                    <li class="page-item ${pageindex==total ? "disabled":""}">
                        <a class="page-link" href="${link}&page=${total}">Last</a>
                    </li>
                </c:if>
            </ul>
        </nav>

        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
       




        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous">

        </script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>

    </body>
</html>
