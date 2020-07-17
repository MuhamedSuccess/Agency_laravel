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
			<p>
				This is a live demo of the application Sending mail using SendGrid
				in laravel which is described in this post.<a style="color: #e36c39"
					href="http://justlaravel.com/sending-emails-using-sendgrid-laravel/"
					target="_blank">Sending mail using SendGrid in Laravel</a>.
				Complete project source code is also available on github <a
					style="color: #e36c39"
					href="https://github.com/avinashn/sending-emails-using-sendgrid-laravel"
					target="_blank">here</a>
			</p>
		</div>
		@if($errors->any())
		<div class="w3-container w3-section w3-green">
			<span onclick="this.parentElement.style.display='none'"
				class="w3-closebtn">&times;</span>
			<h3>Success!</h3>
			<p>{{$errors->first()}}</p>
		</div>
		@endif

		<div class="w3-container w3-section w3-deep-orange">
			<h2 class="w3-margin">Sending emails using SendGrid Demo : Example 1</h2>
			<small class="w3-margin-12">Here you will enter some text and that
				text will be sent to the email id provided below.</small>
		</div>

		<form class="w3-container" action="sendemail" method="POST"
			role="email">
			{{ csrf_field() }}
			<p>
				<label>Enter Some Text</label>
			</p>
			<p>
				<textarea class="w3-input" type="text" name="message"></textarea>
			</p>

			<p>
				<label>Email</label> <input class="w3-input" name="toEmail"
					type="email" required>
			</p>
			<p>
				<input type="submit" class="w3-btn w3-orange" value="Send">
			</p>
		</form>
		<br>

		<div class="w3-container w3-section  w3-deep-orange">
			<h2>Sending emails using SendGrid Demo : Example 2</h2>
			<small>Here an email will be sent to the email id provided below.</small>
		</div>
		<form class="w3-container" action="sendemail" method="POST"
			role="email">
			{{ csrf_field() }}
			<p>
				<label>Email</label> <input name="toEmail" class="w3-input"
					type="email" required>
			</p>
			<p>
				<input type="submit" class="w3-btn w3-orange" value="Send">
			</p>
		</form>

</body>
</html>