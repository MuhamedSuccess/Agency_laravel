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
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
		<link rel="stylesheet"
			href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	@include('partials.header')

    <div class="container">

        <br> <br> <br>
        <div class="w3-container">

        </div>
        <div class="w3-container w3-section w3-green">
            <span onclick="this.parentElement.style.display='none'" class="w3-closebtn">×</span>
            <h3>Success!</h3>
            <p>Your email has been sent successfully</p>
        </div>

        <div class="w3-container w3-section w3-deep-orange">
            <h2 class="w3-margin">Send emails with few steps</h2>
        </div>

{{--        <form class="w3-container" action="sendemail" method="POST" role="email">--}}
{{--            <input type="hidden" name="_token" value="H4T2g3pzx1ZuR0Xfavn8GbPoC1krDT0R4Pg78s7t">--}}
{{--            <p>--}}
{{--                <label>Enter Some Text</label>--}}
{{--            </p>--}}
{{--            <p>--}}
{{--                <textarea class="w3-input" type="text" name="message"></textarea>--}}
{{--            </p>--}}

{{--            <p>--}}
{{--                <label>Email</label> <input class="w3-input" name="toEmail" type="email" required="">--}}
{{--            </p>--}}
{{--            <p>--}}
{{--                <input type="submit" class="w3-btn w3-orange" value="Send">--}}
{{--            </p>--}}
{{--        </form>--}}
        <br>

        <form class="form-horizontal" method="POST" action="/sendmail">
            @csrf
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">To:</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control"  name="to" id="to" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Subject:</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control"  name="subject" id="subject" placeholder="Subject">
                </div>
            </div>
            <div class="form-group">
                <label for="mail_body" class="col-sm-2 control-label">Body:</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="mail_body" rows="3"
                              id="description" placeholder="EMail Body" name="body"
                    ></textarea>
                </div>
            </div>



            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="w3-btn w3-orange">Send Mail</button>
                </div>
            </div>
        </form>

    </div>


    <script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('body');
    </script>


</body>
</html>
