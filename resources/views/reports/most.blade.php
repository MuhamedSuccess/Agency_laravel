<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reports</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12 justify-content-center">
            <img src="{{ asset('logo.png') }}" alt="Logo" height="300px">
        </div>
    </div>
</div>

<h1>Top Trips</h1>
<table class="table table-bordered table-striped table-hover">
    <thead>
    <tr>
        <td>Name</td>
    </tr>
    </thead>
    <tbody>
    @if (count($topTrips))
        @foreach ($topTrips as $one)
            <tr>
                <td>{{ $one->name }}</td>
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
    </tr>
    </thead>
    <tbody>
    @if (count($lowTrips))
        @foreach ($lowTrips as $one)
            <tr>
                <td>{{ $one->name }}</td>
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
    </tr>
    </thead>
    <tbody>
    @if (count($maxGuide))
        @foreach ($maxGuide as $one)
            <tr>
                <td>{{ $one->user->name }}</td>
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
    </tr>
    </thead>
    <tbody>
    @if (count($maxUser))
        @foreach ($maxUser as $one)
            <tr>
                <td>{{ $one->name }}</td>
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
