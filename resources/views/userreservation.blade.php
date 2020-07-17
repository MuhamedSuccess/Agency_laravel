@php 
namespace App\Models;

use App\Models\User;
use App\Models\Trip;
use App\reservation;


@endphp
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

<div class="container ">
    <div class="jumbotron">
      <div class="row justify-content-center ">
          <div class="col-md-8 ">
              <div class="card card-default ">
                  <div class="card-header "><strong> Reservations</strong> <br><br></strong></div>
                      <div class="card-body text-center">
                          <div id="">
                              <table class="table table-border ">
                                    <thead>
                                          <th>ID</th>
                                          <th>trip name</th>
                                          <th>user name</th>
                                          <th>Cancel reservation</th>    
                                    </thead>
                                    <tbody>
                                          @foreach ($reserve as $row)
                                              <tr>                              
                                              <td>{{ $row->id }}</td>
                                              <td>{{ $row->trip->name }}</td>
                                              <td>{{ $row->user->name }}</td>
                                              <th> <a href="/deletereserve/{{ $row->id }}" class="btn btn-danger"> Cancel </a></th>  
                                          </tr>
                                          @endforeach
                                    </tbody>                             
                              </table> 
                          </div>
                  </div>
              </div>
          </div>
      </div>
    </div>

  </div>
</body>
</html>