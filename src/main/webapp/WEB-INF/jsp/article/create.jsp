<%@include file="../layout/master_top.jsp"%>


<!--breadcrumbs start-->
<div id="breadcrumbs-wrapper" style="width:100%;" class="" >
    <div class="container">
        <div class="row">
            <div class="col s12 m12 l12">

                <h5 class="breadcrumbs-title">System Article</h5>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">Create Article</li>
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




            <h5 class="center-align cyan-text">Create New Article</h5>
            <div  class="container row scrollspy">
                <form action="/save-article" method="post"  enctype="multipart/form-data" >

                    <div class="row col s12 m12 l12">
                        <hr />
                    </div>

                    <div class="row col s12 m12 l12">

                        <div class="input-field col s12 m12 l12">
                            <i class="mdi-action-account-box prefix"></i>
                            <input id="title" name="title" type="text"  required  minlength="3" maxlength="255" class="validate ">
                            <label for="title">Title</label>
                            <%--@if ($errors->has('name'))--%>
                            <%--<span class="error">--%>
                            <%--<strong>{{ $errors->first('name') }}</strong>--%>
                            <%--</span>--%>
                            <%--@endif--%>
                        </div>


                    </div>



                    <div class="row col s12 m12 l12">

                        <div class="input-field col s12 m12 l12">
                            <i class="mdi-action-account-box prefix"></i>
                            <textarea id="content" name="content"   required  class="validate editor materialize-textarea"></textarea>
                            <label for="content">Content</label>

                        </div>


                    </div>




                    <div class="row col s12 m12 l12">

                        <div class="input-field col s12 m12 l12">
                            <i class="mdi-action-account-box prefix"></i>
                            <textarea id="remark" name="remark"   required  class="validate editor materialize-textarea"></textarea>
                            <label for="content">Remark</label>

                        </div>


                    </div>


                    <div class="row l12 m12 s12">


                        <div class="col s12">Photo
                            <label for="file1"></label>
                            <input type="file" name="file1" id="file1" class="dropify-event dropify" data-max-file-size="5M">
                        </div><hr>

                        <div class="col s12">File #1
                            <label for="file2"></label>
                            <input type="file" name="file2" id="file2" class="dropify-event dropify" data-max-file-size="5M">
                        </div><hr>

                        <div class="col s12">File #2
                            <label for="file3"></label>
                            <input type="file" name="file3" id="file3" class="dropify-event dropify" data-max-file-size="5M">
                        </div>

                        <div class="row col s12 m12 l12">
                            <div class="input-field col s12 m4 l4">
                                <button class="btn waves-effect waves-light bold" type="submit">Create
                                    <i class="mdi-content-send right"></i>
                                </button>
                            </div>
                        </div>

                    </div>

                </form>

            </div>





        </div>
    </div>
</section>


<%@include file="../layout/master_bottom.jsp"%>