<%@include file="layout/master_top.jsp"%>


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


            <h5 class="center-align cyan-text">Create User Account</h5>
            <div  class="container row scrollspy">
                <form action="{{route('createUser')}}" method="post"  enctype="multipart/form-data" >

                    <div class="row col s12 m12 l12">
                        <hr />
                    </div>

                    <div class="row col s12 m12 l12">

                        <div class="input-field col s12 m4 l4">
                            <i class="mdi-action-account-box prefix"></i>
                            <input id="name" name="name" type="text"  required length="64" minlength="3" maxlength="64" class="validate @if ($errors->has('name')) invalid @endif">
                            <label for="name">Name</label>
                            <%--@if ($errors->has('name'))--%>
                            <%--<span class="error">--%>
                            <%--<strong>{{ $errors->first('name') }}</strong>--%>
                          <%--</span>--%>
                            <%--@endif--%>
                        </div>


                        <div class="input-field col s12 m4 l4">
                            <i class="mdi-action-account-box prefix"></i>
                            <input id="email" name="email" type="text"  required length="64" minlength="3" maxlength="64" class="validate @if ($errors->has('email')) invalid @endif">
                            <label for="email">Email Address</label>

                        </div>

                        <div class="input-field col s12 m4 l4">
                            <select name="publisher_id" required class="browser-default waves-effect waves-light btn-drop" id="publisher_id">
                                <option value="" disabled selected>Select Publisher</option>

                                <option value="{{$publisher->id}}">Ahmad</option>

                            </select>
                        </div>

                    </div>



                    <div class="row col s12 m12 l12">

                        <div class="input-field col s12 m4 l4">
                            <i class="mdi-action-account-box prefix"></i>
                            <input id="password" name="password" type="password"  required length="64" minlength="3" maxlength="64" class="validate @if ($errors->has('password')) invalid @endif">
                            <label for="password">Password</label>

                        </div>


                        <div class="input-field col s12 m4 l4">
                            <i class="mdi-action-account-box prefix"></i>
                            <input id="phone" name="phone" type="text" required length="64" minlength="3" maxlength="64" class="validate @if ($errors->has('phone')) invalid @endif">
                            <label for="phone">Phone</label>

                        </div>


                        <div class="input-field col s12 m4 l4">
                            <select name="role" required class="browser-default waves-effect waves-light btn-drop" id="role">
                                <option value="" disabled selected>Select User Role</option>
                                <option value="pu">Publisher</option>
                                <option value="ad">Admin</option>
                            </select>
                        </div>

                    </div>


                    <div class="row l12 m12 s12">


                        <div class="col s12">
                            <label for="file">Photo</label>
                            <input type="file" name="file" id="file" class="dropify-event dropify" data-max-file-size="5M">
                        </div>

                        <div class="row col s12 m12 l12">
                            <div class="input-field col s12 m4 l4">
                                <button class="btn waves-effect waves-light bold" type="submit">Create
                                    <i class="mdi-content-send right"></i>
                                </button>
                            </div>
                        </div>

                </form>
            </div>

            <h5 class="center-align cyan-text">List Of All Users</h5><br>
            <div id="ameryats_spy" class="row col s12 m12 l12 scrollspy">
                <table  class="responsive-table centered">
                    <thead>

                    <tr>
                        <th>Name</th>
                        <th>Email Address</th>
                        <th>Phone</th>
                        <th>User Role</th>
                        <th>تصحیح</th>
                        <th colspan="3">حذف</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->phone}}</td>

                        <td>{{$user->role =="ad"? 'Admin' : 'Publisher'}}</td>

                        <td><img src="{{asset($user->photo)}}" width="120" class="img-responsive" alt="Photo is not available"></td>

                        <td>



                            <form method="post" action="{{route('userUpdate')}}" name="form">
                                <a data-toggle="tooltip" title="Edit" style="cursor: pointer;" onclick="document.forms['form'].submit();"><i class="mdi-editor-mode-edit"></i></a>
                                {!! csrf_field() !!}
                                <input type="hidden" name="id" value="{{$user->id}}">
                            </form>

                        </td>

                        <td class="cyan-text">
                            <a data-toggle="tooltip" title="Delete" href="#" style="cursor: pointer;" class="delete">
                                <i class="mdi-action-delete"></i>
                            </a>
                        </td>

                    </tr>


                    <%--<tr>--%>
                        <%--<td colspan="8" class="red-text blod">User Account Does not Exist!</td>--%>
                    <%--</tr>--%>
                    </tbody>
                </table>

            </div>

        </div>
    </div>
</section>


<%@include file="layout/master_bottom.jsp"%>