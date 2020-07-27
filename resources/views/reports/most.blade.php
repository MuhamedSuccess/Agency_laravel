<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <style type="text/css"> 
        td{
            font-size: 8px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12 justify-content-center">
            <img src="{{ asset('logo.png') }}" alt="Logo" height="300px">
        </div>
    </div>
</div>

<h1>All Trips</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <td>Name</td>
        <td>description</td>
        <td>status</td>
        <td>date</td>
        <td>trip_cover</td>
        <td>days</td>
        <td>tourists_no</td>
        <td>child</td>
        <td>adult</td>
        <td>senior</td>
        <td>lat</td>
        <td>lng</td>
    </tr>
    </thead>
    <tbody>
    @if (count($allTrips))
        @foreach ($allTrips as $one)
            <tr>
                <td>{{ $one->name }}</td>
                <td>{!! $one->description !!}</td>
                <td>{{ $one->status }}</td>
                <td>{{ $one->date }}</td>
                <td><img height="90px" src="{{ asset('uploads/trips/'.$one->trip_cover) }}"></td>
                <td>{{ $one->days }}</td>
                <td>{{ $one->tourists_no }}</td>
                <td>{{ $one->child }}</td>
                <td>{{ $one->adult }}</td>
                <td>{{ $one->senior }}</td>
                <td>{{ $one->lat }}</td>
                <td>{{ $one->lng }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="1" class="text-center">No data available.</td>
        </tr>
    @endif
    </tbody>
</table>

<h1>Top Trips</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <td>Name</td>
        <td>description</td>
        <td>status</td>
        <td>date</td>
        <td>trip_cover</td>
        <td>days</td>
        <td>tourists_no</td>
        <td>child</td>
        <td>adult</td>
        <td>senior</td>
        <td>lat</td>
        <td>lng</td>
    </tr>
    </thead>
    <tbody>
    @if (count($topTrips))
        @foreach ($topTrips as $one)
            <tr>
                <td>{{ $one->name }}</td>
                <td>{!! $one->description !!}</td>
                <td>{{ $one->status }}</td>
                <td>{{ $one->date }}</td>
                <td><img height="90px" src="{{ asset('uploads/trips/'.$one->trip_cover) }}"></td>
                <td>{{ $one->days }}</td>
                <td>{{ $one->tourists_no }}</td>
                <td>{{ $one->child }}</td>
                <td>{{ $one->adult }}</td>
                <td>{{ $one->senior }}</td>
                <td>{{ $one->lat }}</td>
                <td>{{ $one->lng }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="1" class="text-center">No data available.</td>
        </tr>
    @endif
    </tbody>
</table>

<h1>Low Trips</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
   <tr>
        <td>Name</td>
        <td>description</td>
        <td>status</td>
        <td>date</td>
        <td>trip_cover</td>
        <td>days</td>
        <td>tourists_no</td>
        <td>child</td>
        <td>adult</td>
        <td>senior</td>
        <td>lat</td>
        <td>lng</td>
    </tr>
    </thead>
    <tbody>
    @if (count($lowTrips))
        @foreach ($lowTrips as $one)
            <tr>
                <td>{{ $one->name }}</td>
                <td>{!! $one->description !!}</td>
                <td>{{ $one->status }}</td>
                <td>{{ $one->date }}</td>
                <td><img height="90px" src="{{ asset('uploads/trips/'.$one->trip_cover) }}"></td>
                <td>{{ $one->days }}</td>
                <td>{{ $one->tourists_no }}</td>
                <td>{{ $one->child }}</td>
                <td>{{ $one->adult }}</td>
                <td>{{ $one->senior }}</td>
                <td>{{ $one->lat }}</td>
                <td>{{ $one->lng }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="1" class="text-center">No data available.</td>
        </tr>
    @endif
    </tbody>
</table>

<h1>Top Guide</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <td>Name</td>
        <td>First Name</td>
        <td>Last Name</td>
        <td>E-Mail</td>
        <td>Gender</td>
    </tr>
    </thead>
    <tbody>
    @if (count($maxGuide))
        @foreach ($maxGuide as $one)
            <tr>
                <td>{{ $one->user->name }}</td>
                <td>{{ $one->user->first_name }}</td>
                <td>{{ $one->user->last_name }}</td>
                <td>{{ $one->user->email }}</td>
                <td>{{ $one->user->gender }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="1" class="text-center">No data available.</td>
        </tr>
    @endif
    </tbody>
</table>

<h1>Top User</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <td>Name</td>
        <td>First Name</td>
        <td>Last Name</td>
        <td>E-Mail</td>
        <td>Gender</td>
        <td>preferences</td>
    </tr>
    </thead>
    <tbody>
    @if (count($maxUser))
        @foreach ($maxUser as $one)
            <tr>
                <td>{{ $one->name }}</td>
                <td>{{ $one->first_name }}</td>
                <td>{{ $one->last_name }}</td>
                <td>{{ $one->email }}</td>
                <td>{{ $one->gender }}</td>
                <td>{{ $one->preferences }}</td>
            </tr>
        @endforeach
    @else
        <tr>
            <td colspan="1" class="text-center">No data available.</td>
        </tr>
    @endif
    </tbody>
</table>

<div style="display: none">
    {{ date_default_timezone_set('Africa/Cairo') }}
</div>
<h3>Creation date: {{ date('m/d/Y h:i:s a', time()) }}</h3>

<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
