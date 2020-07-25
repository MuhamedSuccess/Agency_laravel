<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodePen - Bootstrap MultiStep Form</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}" />



    <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="{{ asset('reservation/css/style.css')}}">
    <link rel="stylesheet" href="{{ asset('reservation/css/reserve.css')}}">
    <link rel="stylesheet" href="{{ asset('reservation/css/reserve2.css')}}">

</head>
<body>
<!-- partial:index.partial.html -->
<!-- MultiStep Form -->
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <form id="msform">
            <!-- progressbar -->

            <?php

if (isset($trip->id)) {
    echo '<input type="hidden" name="ans1" id="trip_id" value="'.$trip->id.'"/>';

 }
            ?>
            <!-- <input type="hidden" id="trip_id" value="{{$trip->id}}"> -->

            <ul id="progressbar">
                <li class="active">Tickets</li>
                <li>Personal Details</li>
                <li>Payment Setup</li>
            </ul>
            <!-- fieldsets -->
            <fieldset>
                <h2 class="fs-title">How many tickets?</h2>
                <h3 class="fs-subtitle">Tell us something more about you</h3>
                <div class="css-wf0su7">
                    <div class="css-gg4vpm"><h3 class="css-x0qsx1">{{$trip->name}}</h3>
                        <div class="css-knguxb"><a class="css-110jmmw"
                                                   href="/attractions/de/prqzzl9quzdt-two-hour-port-cruise-with-live-commentary.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AufZ3vgFwAIB0gIkNzNhYzFmYzItYjk0MC00ZTUxLWFkYTQtMzZhZjE1YjBmMWRj2AIF4AIB&amp;source=attractions_index_open_shop&amp;date=2020-07-23&amp;start_time=11%3A30&amp;ticket_type=OF4y7IIuTziA&amp;tickets=OIDB9E4CEv1I%3A1%2C">Change
                                selection</a></div>
                    </div>
                    <div class="css-19ldw5v">
                        <ul class="css-fg70dr">
                            <li class="css-efqvk9">
                                <div class="css-1roxo4f">
                                    <svg viewBox="0 0 22 22" width="22" height="22" color="hsl(0, 0%, 20%)" role="img">
                                        <path
                                            d="M11 18.33c-4.05 0-7.33-3.28-7.33-7.33S6.95 3.67 11 3.67s7.33 3.28 7.33 7.33-3.28 7.33-7.33 7.33zm0-16.5c-5.06 0-9.17 4.11-9.17 9.17s4.11 9.17 9.17 9.17 9.17-4.11 9.17-9.17S16.06 1.83 11 1.83zm3.89 5.28A5.507 5.507 0 0011 5.5V11l-3.89 3.89c2.14 2.14 5.63 2.14 7.78 0a5.498 5.498 0 000-7.78z"
                                            fill="hsl(0, 0%, 20%)"></path>
                                    </svg>
                                </div>
                                <div>
                                    <div class="css-1itv5e3">
                                        <div class="css-18p1y7y">Duration: 2 hours</div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="css-1eib43e">
                            <div class="css-3qni7c">
                                <div class="css-1vgk0gh">How many tickets?</div>
                            </div>
                            <div class="css-1fvf6y0">
                                <div class="css-1ultjej"><div class="css-y8a1hp"><div class="css-18p1y7y">Adult (15+)</div><div class="normal css-1ikr54u"><div class="css-lepz45">EGP&nbsp;401.93</div></div></div><div class="css-1rz3e28"><button id="rm0" class="css-5c2d0g" type="button" data-testid="rm-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(205, 100%, 38%)" role="img"><path d="M11.64 6.624H0V4.983h11.64V1.64z" fill="hsl(205, 100%, 38%)"></path></svg></button><div class="css-yk1xyp"><div  id="cost0" class="css-1gfl9a5">1</div></div><button id="add0" class="css-5c2d0g" type="button" data-testid="add-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(205, 100%, 38%)" role="img"><path d="M11.82 6.82h-5v5H5.18v-5h-5V5.18h5v-5h1.64v5h5z" fill="hsl(205, 100%, 38%)"></path></svg></button></div></div><div id="row1" class="css-1ultjej"><div class="css-y8a1hp"><div class="css-18p1y7y">Child (4-14)</div><div class="normal css-1ikr54u"><div class="css-lepz45">EGP&nbsp;200.97</div></div></div><div class="css-1rz3e28"><button id="rm1" class="css-b3qk33" type="button" data-testid="rm-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(0, 0%, 74.1%)" role="img"><path d="M11.64 6.624H0V4.983h11.64V1.64z" fill="hsl(0, 0%, 74.1%)"></path></svg></button><div class="css-yk1xyp"><div id="cost1" class="css-1gfl9a5">0</div></div><button id="add1" class="css-5c2d0g" type="button" data-testid="add-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(205, 100%, 38%)" role="img"><path d="M11.82 6.82h-5v5H5.18v-5h-5V5.18h5v-5h1.64v5h5z" fill="hsl(205, 100%, 38%)"></path></svg></button></div></div><div id="row2" class="css-1ultjej"><div class="css-y8a1hp"><div class="css-18p1y7y">Infant (0-3)</div><div class="normal css-1ikr54u"><div class="css-lepz45">EGP&nbsp;0</div></div></div><div class="css-1rz3e28"><button id="rm2" class="css-b3qk33" type="button" data-testid="rm-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(0, 0%, 74.1%)" role="img"><path d="M11.64 6.624H0V4.983h11.64V1.64z" fill="hsl(0, 0%, 74.1%)"></path></svg></button><div class="css-yk1xyp"><div id="cost2" class="css-1gfl9a5">0</div></div><button id="add2" class="css-5c2d0g" type="button" data-testid="add-ticket"><svg viewBox="0 0 12 12" width="16" height="16" color="hsl(205, 100%, 38%)" role="img"><path d="M11.82 6.82h-5v5H5.18v-5h-5V5.18h5v-5h1.64v5h5z" fill="hsl(205, 100%, 38%)"></path></svg></button></div></div></div>
                        </div>
                        <div class="css-mj2shq">
                            <hr class="css-d0w81h">
                        </div>
                    </div>
                    <div class="css-1cx5zag">
                        <div>
                            <div class="css-j7qwjs">
                                <div class="css-1sh5juu">Total</div>
                                <div class="css-1gfl9a5">EGP&nbsp;401.93</div>
                            </div>
                        </div>
                        <div class="css-19f3u6r">
                            <button role="button" class="css-hc030e">
                                <div class="css-14f60nc">
                                    <div>Next</div>
                                </div>
                            </button>
                        </div>
                    </div>
                </div>
                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                <input type="button" id="next1" name="next" class="next action-button" value="Next"/>
            </fieldset>
            <fieldset id="main">


                @include('partials.2step')

                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                <input type="button" name="next" class="next action-button" value="Next"/>
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Create your account</h2>
                <h3 class="fs-subtitle">Fill in your credentials</h3>
                <input type="text" name="email" placeholder="Email"/>
                <input type="password" name="pass" placeholder="Password"/>
                <input type="password" name="cpass" placeholder="Confirm Password"/>
                <input type="button" name="previous" class="previous action-button-previous" value="Previous"/>
                <input type="submit" name="submit" class="submit action-button" value="Submit"/>
            </fieldset>
        </form>

    </div>
</div>
<!-- /.MultiStep Form -->
<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
<script src="{{asset('reservation/js/script.js')}}"></script>
<script src="{{asset('reservation/js/index.js')}}"></script>
<script src="{{asset('reservation/js/reserve.js')}}"></script>
<!-- <script src="https://q-xx.bstatic.com/psb/attractions-frontend/static/js/vendor.69c1d70a.chunk.js" defer></script> -->

</body>
</html>
