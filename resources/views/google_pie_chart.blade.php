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
        <title>Make Google Pie Chart in Laravel</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
        <style type="text/css">
   .box{
    width:800px;
    margin:0 auto;
   }
  </style>
  <script type="text/javascript">
    var analytics = <?php echo $gender; ?>
 
    google.charts.load('current', {'packages':['corechart']});
 
    google.charts.setOnLoadCallback(drawChart);
 
    function drawChart()
    {
     var data = google.visualization.arrayToDataTable(analytics);
     var options = {
      title : 'Percentage of Male and Female users'
     };
     var chart = new google.visualization.PieChart(document.getElementById('pie_chart'));
     chart.draw(data, options);
    }
   </script>
 </head>
 <body>
    @include('partials.header')

  <br />
  <div class="container">
   <h3 align="center"> Percentage of Male and Female Users </h3><br />
   
   <div class="panel panel-default">
    <div class="panel-heading">
     <h3 class="panel-title">Percentage of Male and Female Users</h3>
    </div>
    <div class="panel-body" align="center">
     <div id="pie_chart" style="width:750px; height:450px;">

     </div>
    </div>
   </div>
<br><br><br><br>
<br><br>
<br><br>

  </div>
 </body>
</html>