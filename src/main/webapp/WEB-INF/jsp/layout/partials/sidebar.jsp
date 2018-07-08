<%--Sidebar--%>


<li class="bold">
    <a href="{{route('puhome')}}" class="waves-effect waves-cyan"><i class="mdi-action-dashboard"></i> Dashboard</a>
</li>

<!-- START OF COLLAPSABLE -->

<ul class="collapsible collapsible-accordion">
    <li class="bold">
        <a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-social-group prefix"></i>Accounts</a>
        <div class="collapsible-body">
            <ul>
                <li><a href="{{route('users')}}">Create Account</a></li>
                <li><a href="#">Accounts</a></li>
            </ul>
        </div>
    </li>

    <li class="bold">
        <a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-notification-event-note prefix"></i>Announcement</a>
        <div class="collapsible-body">
            <ul>

                <li><a href="/create-announcement">Create Announcement</a></li>

                <li><a href="/list-announcements">List Announcements</a></li>
            </ul>
        </div>
    </li>


    <li class="bold">
        <a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-notification-event-note prefix"></i>News</a>
        <div class="collapsible-body">
            <ul>

                <li><a href="/create-news">Create News</a></li>

                <li><a href="/list-news">List News</a></li>
            </ul>
        </div>
    </li>


    <li class="bold">
        <a class="collapsible-header  waves-effect waves-cyan"><i class="mdi-notification-event-note prefix"></i>Article</a>
        <div class="collapsible-body">
            <ul>

                <li><a href="/create-article">Create Article</a></li>

                <li><a href="/list-articles">List Articles</a></li>
            </ul>
        </div>
    </li>


</ul>
<!-- END OF COLLAPSABLE -->


</ul>
<a href="#" data-activates="slide-out" class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only darken-2"><i class="mdi-navigation-menu" ></i></a>
</aside>
<!-- END LEFT SIDEBAR NAV-->