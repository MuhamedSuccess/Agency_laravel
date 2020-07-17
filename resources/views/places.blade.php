
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




</head>
<body>
    @include('partials.header')

    <br><br>
    <div class="container">   
        
        <div class="jumbotron">
            <h1 >Add New Place</h1>
        <form action="{{ route ('addplace') }}" method="POST" enctype="multipart/form-data"> 
             {{ csrf_field() }}
                <div class="form-group">
                    <label>Name :</label>
                    <input type="text" name="name" class="form-control" placeholder="enter name">
                </div>
    
                <div class="form-group">
                    <label>City :</label>
                    <input type="text" name="city" class="form-control" placeholder="enter city">
                </div>
    
                <div class="form-group">
                    <label>Country :</label>
                    <input type="text" name="country" class="form-control" placeholder="enter country">
                </div>
    
                <div class="form-group">
                    <label>Descriptipn :</label>
                    <input type="text" name="description" class="form-control" placeholder="enter descriptipn">
                </div>
    
                <div class="input-group">
                    <div class="custom-file">
                        
                        <label class="custom-file-label"> Choose Image :</label>      
                        <input type="file" name="image" class="custom-file-input" >              
                    </div>
                </div>
                <br><br>
                <button type="submit"  name="submit" class="btn btn-primary"> Save Data </button>
            </form>
        </div>
    </div>
</body>
</html>

<script>

</script>