<%@ page import="com.application.model.Announcement" %>
<%@include file="../layout/master_top.jsp"%>


<!--breadcrumbs start-->
<div id="breadcrumbs-wrapper" style="width:100%;" class="" >
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">

                <h5 class="breadcrumbs-title">System User</h5>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Create User Account</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!--breadcrumbs end-->


<!-- START CONTENT -->
<section>
    <div class="row">
        <div class="section col s12 m12 l12">


            <h5 class="center-align cyan-text">List Of All Users</h5><br>
            <div id="ameryats_spy" class="row col s12 m12 l12 scrollspy">
                <table  class="responsive-table centered">
                    <thead>

                    <tr>
                        <th>Title</th>
                        <th>Content</th>
                        <th>Remark</th>

                        <th>Update</th>
                        <th colspan="3">Delete</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${announcements}" var="announcement">
                        <tr>
                            <td>${announcement.title}</td>
                            <td>${announcement.content}</td>
                            <td>${announcement.remark}</td>


                            <td class="cyan-text">
                                <a data-toggle="tooltip" title="Update" href="/update-announcement/${announcement.id}" style="cursor: pointer;" class="delete">
                                    <i class="mdi-editor-mode-edit"></i>
                                </a>
                            </td>



                            <td class="cyan-text">
                                <a data-toggle="tooltip" title="Delete" href="/delete-announcement/${announcement.id}" style="cursor: pointer;" class="delete">
                                    <i class="mdi-action-delete"></i>
                                </a>
                            </td>


                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

            </div>




        </div>
    </div>
</section>


<%@include file="../layout/master_bottom.jsp"%>