<%@ page import="com.application.model.Article" %>
<%@include file="../layout/master_top.jsp"%>


<!--breadcrumbs start-->
<div id="breadcrumbs-wrapper" style="width:100%;" class="" >
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">

                <h5 class="breadcrumbs-title">System Article</h5>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">List Articles</li>
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


            <h5 class="center-align cyan-text">List Of All Article</h5><br>
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

                        <c:forEach items="${articles}" var="n">
                            <tr>
                                <td>${n.title}</td>
                                <td>${n.content}</td>
                                <td>${n.remark}</td>


                                <td class="cyan-text">
                                    <a data-toggle="tooltip" title="Update" href="/update-article/${n.id}" style="cursor: pointer;" class="delete">
                                        <i class="mdi-editor-mode-edit"></i>
                                    </a>
                                </td>



                                <td class="cyan-text">
                                    <a data-toggle="tooltip" title="Delete" href="/delete-article/${n.id}" style="cursor: pointer;" class="delete">
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