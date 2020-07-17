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
              <a href="/places" class="btn btn-primary"> Add New Place</a> <br><br>
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">City</th>
                        <th scope="col">Country</th>
                        <th scope="col">Description</th>
                        <th scope="col">Image</th>
                        <th>EDIT</th>
                        <th>delete</th>


                      </tr>
                    </thead>
                    <tbody>
                        @foreach ($place as $placee)
                          <tr>                            
                            <th>{{ $placee-> id }}</th>
                            <th>{{ $placee-> name }}</th>
                            <th>{{ $placee-> city }}</th>
                            <th>{{ $placee-> country }}</th>
                            <th>{{ $placee-> description }}</th>
                            <th><img src="{{ asset('uploads/employee/'.$placee->image ) }}" alt="Image" width="100px" height="100px"></th>
                            <th> <a href="/editplace/{{ $placee-> id }}" class="btn btn-success"> EDIT </a></th>
                            <th> <a href="/deleteplace/{{ $placee-> id }}" class="btn btn-danger"> DELETE </a></th>  
  
                          </tr>
                        @endforeach
                    </tbody>
                  </table>
            </div>
        </div>
    </body>
    </html>
    
    <script>
    
    </script>