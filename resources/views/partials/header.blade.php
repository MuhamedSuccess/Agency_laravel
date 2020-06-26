@include('partials.load_scripts')

<header id="fh5co-header-section" class="sticky-banner">
    <div class="container">
        <div class="nav-header">
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
            <!-- <a href="{{ route('register') }}">Register</a> -->
            <h1 id="fh5co-logo"><a href="{{ route('trip') }}"><i class="icon-airplane"></i>Travel</a></h1>
            <!-- START #fh5co-menu-wrap -->
            <nav id="fh5co-menu-wrap" role="navigation">
                <ul class="sf-menu" id="fh5co-primary-menu">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li>
                        <a href="vacation.html" class="fh5co-sub-ddown">Vacations</a>
                        <ul class="fh5co-sub-menu">
                            <li><a href="#">Family</a></li>
                            <li><a href="#">CSS3 &amp; HTML5</a></li>
                            <li><a href="#">Angular JS</a></li>
                            <li><a href="#">Node JS</a></li>
                            <li><a href="#">Django &amp; Python</a></li>
                        </ul>
                    </li>
                    <li><a href="flight.html">Flights</a></li>
                    <li><a href="hotel.html">Hotel</a></li>
                    <li><a href="car.html">Car</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="contact.html">Contact</a></li>


                    {{-- Notification part --}}
                    <li>
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li class="dropdown dropdown-notifications">
                                    <a href="#notifications-panel" class="dropdown-toggle" data-toggle="dropdown">
                                        <i data-count="0" class="glyphicon glyphicon-bell notification-icon"></i>
                                    </a>

                                    <div class="dropdown-container">
                                        <div class="dropdown-toolbar">
                                            <div class="dropdown-toolbar-actions">
                                                <a href="#">Mark all as read</a>
                                            </div>
                                            <h3 class="dropdown-toolbar-title">Notifications (<span
                                                    class="notif-count">0</span>)</h3>
                                        </div>
                                        <ul class="dropdown-menu">
                                        </ul>
                                        <div class="dropdown-footer text-center">
                                            <a href="#">View All</a>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </li>
                    {{-- end Notification --}}



                    <li class="nav-item dropdown">
                        <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle user-action">

                            @if ((Auth::User()))
                            {{ Auth::user()->name }}
                            <img src="{{asset('storage/avatar/'.Auth::user()->profile->avatar)}}" id="avatar"
                                class="user-avatar  img-responsive img-circle" width=40>

                            @else
                            <img id="avatar" src="{{asset('images/anonymous.png')}}" class="avatar">

                            @endif

                            <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            @if(Auth::user()->user_type ==3)
                            <li><a href="{{ route('public.dashboardhome') }}" class="dropdown-item"><i
                                        class="fa fa-user-o"></i> Dash Board</a></li>
                            @endif
                            <li><a class="nav-link {{ Request::is('profile/'.Auth::user()->name, 'profile/'.Auth::user()->name . '/edit') ? 'active' : null }}"
                                    href="{{ url('/profile/'.Auth::user()->name) }}">
                                    {!! trans('titles.profile') !!}
                                </a></li>

                            <li><a href="#" class="dropdown-item"><i class="fa fa-calendar-o"></i> Calendar</a></li>
                            <li><a href="#" class="dropdown-item"><i class="fa fa-sliders"></i> Settings</a></li>
                            <li class="divider dropdown-divider"></li>
                            <li><a href="{{route('logout')}}" class="dropdown-item"><i
                                        class="material-icons">&#xE8AC;</i>
                                    Logout</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
</header>