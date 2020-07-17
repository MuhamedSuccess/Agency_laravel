

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel 5.8 - Individual Column Search in Datatables using Ajax</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>  
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    {{-- CSRF Token --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@hasSection('template_title')@yield('template_title') | @endif
        {{ config('app.name', Lang::get('titles.app')) }}</title>
    <meta name="description" content="">
    <meta name="author" content="Jeremy Kenedy">
    <!-- <link rel="shortcut icon" href="/favicon.ico"> -->

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />


    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Animate.css -->
    <link rel="stylesheet" href="{{ asset('travel/css/animate.css') }}">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="{{ asset('travel/css/icomoon.css') }}">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="{{ asset('travel/css/bootstrap.css') }}">
    <!-- Superfish -->
    <link rel="stylesheet" href="{{ asset('travel/css/superfish.css') }}">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="{{ asset('travel/css/magnific-popup.css') }}">
    <!-- Date Picker -->
    <link rel="stylesheet" href="{{ asset('travel/css/bootstrap-datepicker.min.css') }}">
    <!-- CS Select -->
    <link rel="stylesheet" href="{{ asset('travel/css/cs-select.css') }}">
    <link rel="stylesheet" href="{{ asset('travel/css/cs-skin-border.css') }}">

    <link rel="stylesheet" href="{{ asset('travel/css/style.css') }}">


    <!-- Modernizr JS -->
    <script src="{{ asset('travel/js/modernizr-2.6.2.min.js') }}"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
<script src="js/respond.min.js"></script>
<![endif]-->


    {{-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --}}
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    {{-- Fonts --}}


    {{-- Styles --}}




    {{-- <style type="text/css">
        @yield('template_fastload_css') @if (Auth::User() && (Auth::User()->profile) && (Auth::User()->profile->avatar_status==0)) .user-avatar-nav {
            background: url({{ Gravatar::get(Auth::user()->email)
        }
        }

        ) 50% 50% no-repeat;
        background-size: auto 100%;
        }

        @endif

    </style> --}}

    {{-- Scripts --}}






    {{-- @yield('head') --}}
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-notifications.min.css">

</head>
<body>
    @include('partials.header')

       
        <div class="container">    
            <br />
            <h3 align="center"> Trip Filter    </h3>
            <br />
                <br />
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <select name="filter_place" id="filter_place" class="form-control" required>
                                <option value="">Select trip</option>
                                @foreach($place_name as $place)

                                <option value="{{ $place->name }}">{{ $place->name }}</option>

                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <select name="filter_days" id="filter_days" class="form-control" required>
                                <option value="">Select Num Of Days</option>
                                @foreach($Days as $days)

                                <option value="{{ $days->days }}">{{ $days->days }}</option>

                                @endforeach
                            </select>
                        </div>
                        
                        <div class="form-group" align="center">
                            <button type="button" name="filter" id="filter" class="btn btn-info">Filter</button>

                            <button type="button" name="reset" id="reset" class="btn btn-default">Reset</button>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
                <br />
        <div class="table-responsive">
        <table id="trip_data" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>name</th>
                                <th>description</th>
                                <th>guide_id</th>
                                <th>days</th>
                                <th>trip_plan_id</th>
                            </tr>
                        </thead>
                    </table>
        </div>
                <br />
                <br />
        </div>
    </body>
    </html>

<script>
$(document).ready(function(){

    fill_datatable();

    function fill_datatable(filter_place = '', filter_days = '')
    {
        var dataTable = $('#trip_data').DataTable({
            processing: true,
            serverSide: true,
            ajax:{
                url: "{{ route('TripSearch.index') }}",
                data:{filter_place:filter_place, filter_days:filter_days}
            },
            columns: [
                {
                    data:'name',
                    name:'name'
                },
                {
                    data:'description',
                    name:'description'
                },
                {
                    data:'guide_id',
                    name:'guide_id'
                },
                {
                    data:'days',
                    name:'days'
                },
                {
                    data:'trip_plan_id',
                    name:'trip_plan_id'
                }
            ]
        });
    }

    $('#filter').click(function(){
        var filter_place = $('#filter_place').val();
        var filter_days = $('#filter_days').val();

        if(filter_place != '' &&  filter_days != '')
        {
            $('#trip_data').DataTable().destroy();
            fill_datatable(filter_place, filter_days);
        }
        else
        {
            alert('Select Both filter option');
        }
    });

    $('#reset').click(function(){
        $('#filter_place').val('');
        $('#filter_days').val('');
        $('#trip_data').DataTable().destroy();
        fill_datatable();
    });

});
</script>