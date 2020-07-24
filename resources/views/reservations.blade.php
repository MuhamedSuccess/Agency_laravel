<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodePen - Bootstrap MultiStep Form</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

                <div class="css-oxzxea">
                    <div class="css-3l1sj1">
                        <div class="css-1892x3t">
                            <div class="css-92dg0j">
                                <div class="css-1g504a5">
                                    <div class="css-1jke4yk"><span class="css-1t2c0s1"><a role="button"
                                                                                          class="css-19p07l1"
                                                                                          href="/attractions/de/prqzzl9quzdt-two-hour-port-cruise-with-live-commentary.html?label=gen173nr-1FCAEoggI46AdIM1gEaEOIAQGYATG4ARfIAQzYAQHoAQH4AQKIAgGoAgO4AufZ3vgFwAIB0gIkNzNhYzFmYzItYjk0MC00ZTUxLWFkYTQtMzZhZjE1YjBmMWRj2AIF4AIB&amp;source=attractions_index_open_shop&amp;date=2020-07-29&amp;start_time=11%3A30&amp;tickets=OIDB9E4CEv1I%3A1%2C&amp;ticket_type=OF4y7IIuTziA"><div
                                                    class="css-14f60nc"><div class="css-1qgcin5"><svg
                                                            viewBox="0 0 22 22" width="22" height="22"
                                                            color="hsl(0, 0%, 0%)" role="img" aria-hidden="true"><path
                                                                d="M18.33 10.1v1.8H7.18l5.11 5.15L11 18.33 3.67 11 11 3.67l1.29 1.28-5.11 5.15z"
                                                                fill="hsl(0, 0%, 0%)"></path></svg></div><div
                                                        class="css-qbtf1k">←</div></div></a></span>
                                        <div class="css-1mlv8du">
                                            <div class="css-1vgk0gh">Step 1 of 2</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-1vo4cb4">
                                <div>
                                    <div class="css-1lgroug">
                                        <div class="css-120os50">
                                            <div class="css-mj2shq">
                                                <div class="css-6knrg7">Your details</div>
                                            </div>
                                            <div class="css-mj2shq"></div>
                                            <div class="css-1nk1cbk">
                                                <div class="css-n569jk">
                                                    <div class="css-gg4vpm"><label
                                                            for="42ab31e4-254a-439d-b0f4-de8e426e2cc5"
                                                            style="margin-right:16px">
                                                            <div class="css-18p1y7y">First Name</div>
                                                        </label></div>
                                                    <input type="text" name="firstName"
                                                           id="42ab31e4-254a-439d-b0f4-de8e426e2cc5" placeholder=""
                                                           class="css-5pg80m" value="Mohamed"></div>
                                            </div>
                                            <div class="css-1nk1cbk">
                                                <div class="css-n569jk">
                                                    <div class="css-gg4vpm"><label
                                                            for="63989031-11c3-4390-8eef-6d836190f2eb"
                                                            style="margin-right:16px">
                                                            <div class="css-18p1y7y">Last name</div>
                                                        </label></div>
                                                    <input type="text" name="lastName"
                                                           id="63989031-11c3-4390-8eef-6d836190f2eb" placeholder=""
                                                           class="css-5pg80m" value="Adel"></div>
                                            </div>
                                            <div class="css-1nk1cbk">
                                                <div class="css-n569jk">
                                                    <div class="css-gg4vpm"><label
                                                            for="0451519a-c456-4b38-b0a3-7786ce01c12b"
                                                            style="margin-right:16px">
                                                            <div class="css-18p1y7y">Email Address</div>
                                                        </label></div>
                                                    <input type="text" name="email"
                                                           id="0451519a-c456-4b38-b0a3-7786ce01c12b" placeholder=""
                                                           class="css-5pg80m" value="mohamedadel2015ar@gmail.com"></div>
                                            </div>
                                            <div class="css-1nk1cbk">
                                                <div class="css-n569jk">
                                                    <div class="css-gg4vpm"><label
                                                            for="f8908fb2-2982-460c-9cc4-29a27faf6bd1"
                                                            style="margin-right:16px">
                                                            <div class="css-18p1y7y">Confirm email address</div>
                                                        </label></div>
                                                    <input type="text" name="emailConfirm"
                                                           id="f8908fb2-2982-460c-9cc4-29a27faf6bd1" placeholder=""
                                                           class="css-5pg80m" value="mohamedadel2015ar@gmail.com"></div>
                                            </div>
                                            <div class="css-1nk1cbk">
                                                <div class="css-n569jk">
                                                    <div class="css-gg4vpm"><label
                                                            for="cc62920b-a26a-4215-9a5c-c01f33dfcf4c"
                                                            style="margin-right:16px">
                                                            <div class="css-18p1y7y">Phone (mobile number preferred)
                                                            </div>
                                                        </label></div>
                                                    <input type="text" name="phone"
                                                           id="cc62920b-a26a-4215-9a5c-c01f33dfcf4c" placeholder=""
                                                           class="css-5pg80m" value=""></div>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="css-uyyx0t">
                                    <div class="css-178yklu">
                                        <div class="css-19ceb8l"><h3 class="css-4rqfmi">Free cancellation</h3>
                                            <p class="css-1sbt5ka">You can cancel for free up to 24 hours before the
                                                listed start time</p>
                                            <h3 class="css-4rqfmi">Digital ticket</h3>
                                            <p class="css-1sbt5ka">Print tickets at home or show them on your phone at
                                                the venue</p>
                                            <h3 class="css-4rqfmi">You'll pay in Euro (EUR)</h3>
                                            <p class="css-1sbt5ka">The total price was converted to show the approximate
                                                cost in your selected currency.&nbsp;You'll be charged in the local
                                                currency (Euro).</p></div>
                                    </div>
                                    <input type="submit" hidden=""></div>
                            </div>
                            <div class="css-91xa6t">
                                <div class="css-1aui7uw"><span data-testid="bpd-cta"><button role="button" type="submit"
                                                                                             class="css-hc030e"><div
                                                class="css-14f60nc"><div>Next</div></div></button></span></div>
                            </div>
                            <div class="css-92dg0j">
                                <div class="css-19mr1tx">
                                    <div class="css-1w4tquc" style="height:0">
                                        <div class="css-8fv3qt">
                                            <div class="css-8atqhb">
                                                <div class="css-12w75fp">
                                                    <div class="css-uzjdsw">
                                                        <div class="css-i9gxme">
                                                            <div style="display: flex; justify-content: space-between;">
                                                                <div class="css-1gfl9a5">Total</div>
                                                                <div class="large css-skkly2">
                                                                    <div class="css-1vsmjje">EGP&nbsp;403.62</div>
                                                                </div>
                                                            </div>
                                                            <div style="display: flex; justify-content: space-between;">
                                                                <div class="css-1sh5juu">Local currency (Euro)</div>
                                                                <div class="small css-skkly2">
                                                                    <div class="css-1xpmvh7">€22.00</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="css-1w97s8e">
                                                            <svg viewBox="0 0 22 22" width="22" height="22"
                                                                 color="hsl(0, 0%, 20%)" role="img">
                                                                <path
                                                                    d="M6.79 14.4L11 10.2l4.21 4.2 1.29-1.3L11 7.6l-5.5 5.5z"
                                                                    fill="hsl(0, 0%, 20%)"></path>
                                                            </svg>
                                                        </div>
                                                    </div>
                                                    <div class="css-12k8bd6" style="height: 0px;">
                                                        <div>
                                                            <div class="css-j0z53p">
                                                                <div class="css-mifb2i">
                                                                    <div class="css-1yg2mdt">
                                                                        <svg viewBox="0 0 22 22" width="22" height="22"
                                                                             color="hsl(0, 0%, 20%)" role="img">
                                                                            <path
                                                                                d="M20.2 9.2V5.5a1.79 1.79 0 00-1.8-1.8H3.7a1.79 1.79 0 00-1.8 1.8v3.7a1.8 1.8 0 010 3.6v3.7a1.79 1.79 0 001.8 1.8h14.7a1.79 1.79 0 001.8-1.8v-3.7a1.79 1.79 0 01-1.8-1.8 1.73 1.73 0 011.8-1.8zm-1.9-1.4a3.58 3.58 0 00-1.8 3.2 3.82 3.82 0 001.8 3.2v2.3h-3.7v-.9h-1.8v.9H3.7v-2.3A3.58 3.58 0 005.5 11a3.69 3.69 0 00-1.8-3.2V5.5h9.2v.9h1.8v-.9h3.7v2.3z"
                                                                                fill="hsl(0, 0%, 20%)"></path>
                                                                            <path
                                                                                d="M12.8 8.2h1.8V10h-1.8zM12.8 11.9h1.8v1.8h-1.8z"
                                                                                fill="hsl(0, 0%, 20%)"></path>
                                                                        </svg>
                                                                    </div>
                                                                    <div class="css-8atqhb">
                                                                        <div class="css-1qm1lh">
                                                                            <div class="css-1xlzx9v">
                                                                                <p id="package"></p>
                                                                                <div class="css-1vgk0gh">{{$trip->name}}</div>
                                                                            </div>
                                                                            <div class="css-1hkcgpz" >
                                                                                <p class="package"></p>
                                                                                <div class="css-1juxtrk">
                                                                                    EGP&nbsp;403.62
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="css-1aetwlx"><span data-testid="bpd-cta"><button role="button"
                                                                                                         type="submit"
                                                                                                         class="css-hc030e"><div
                                                            class="css-14f60nc"><div>Next</div></div></button></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="css-37ds6r">
                            <div class="css-91xa6t">
                                <div class="css-55hyir" style="width: 374.875px;">
                                    <div class="css-1eib43e">
                                        <div class="css-1gfl9a5">Two-hour Port Cruise with Live Commentary</div>
                                        <div class="css-18wiupk">
                                            <div class="css-mifb2i">
                                                <div class="css-1yg2mdt">
                                                    <svg viewBox="0 0 22 22" width="22" height="22"
                                                         color="hsl(0, 0%, 20%)" role="img">
                                                        <path
                                                            d="M11.52 6v5.25L16 13.91l-.75 1.27L10 12V6zm-6.2 10.7A7.83 7.83 0 0011 19a7.65 7.65 0 005.63-2.35A7.76 7.76 0 0019 11a7.59 7.59 0 00-2.4-5.63A7.59 7.59 0 0011 3a7.76 7.76 0 00-5.68 2.4A7.65 7.65 0 003 11a7.83 7.83 0 002.32 5.68zM3.91 4A9.69 9.69 0 0111 1a9.53 9.53 0 017 3 9.53 9.53 0 013 7 9.69 9.69 0 01-3 7.09A9.6 9.6 0 0111 21 9.94 9.94 0 011 11a9.6 9.6 0 012.91-7z"
                                                            fill="hsl(0, 0%, 20%)"></path>
                                                    </svg>
                                                </div>
                                                <div class="css-8atqhb">
                                                    <div class="css-1xlzx9v">
                                                        <div class="css-1vgk0gh">Wed, Jul 29 11:30 AM</div>
                                                    </div>
                                                    <div class="css-18p1y7y">Arrive at the start of this timeslot</div>
                                                </div>
                                            </div>
                                            <div class="css-mifb2i">
                                                <div class="css-1yg2mdt">
                                                    <svg viewBox="0 0 22 22" width="22" height="22"
                                                         color="hsl(0, 0%, 20%)" role="img">
                                                        <path
                                                            d="M20.2 9.2V5.5a1.79 1.79 0 00-1.8-1.8H3.7a1.79 1.79 0 00-1.8 1.8v3.7a1.8 1.8 0 010 3.6v3.7a1.79 1.79 0 001.8 1.8h14.7a1.79 1.79 0 001.8-1.8v-3.7a1.79 1.79 0 01-1.8-1.8 1.73 1.73 0 011.8-1.8zm-1.9-1.4a3.58 3.58 0 00-1.8 3.2 3.82 3.82 0 001.8 3.2v2.3h-3.7v-.9h-1.8v.9H3.7v-2.3A3.58 3.58 0 005.5 11a3.69 3.69 0 00-1.8-3.2V5.5h9.2v.9h1.8v-.9h3.7v2.3z"
                                                            fill="hsl(0, 0%, 20%)"></path>
                                                        <path d="M12.8 8.2h1.8V10h-1.8zM12.8 11.9h1.8v1.8h-1.8z"
                                                              fill="hsl(0, 0%, 20%)"></path>
                                                    </svg>
                                                </div>
                                                <div class="css-8atqhb">
                                                    <div class="css-1qm1lh">
                                                        <div class="css-1xlzx9v">
                                                            <div class="css-1vgk0gh">{{$trip->name}}</div>
                                                        </div>
                                                        <div class="css-1hkcgpz">
                                                            <p class="package"></p>
                                                            <div class="css-1juxtrk">EGP&nbsp;403.62</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-mj2shq">
                                            <div style="display: flex; justify-content: space-between;">
                                                <div class="css-1gfl9a5">Total</div>
                                                <div class="large css-skkly2">
                                                    <div class="css-1vsmjje">EGP&nbsp;403.62</div>
                                                </div>
                                            </div>
                                            <div style="display: flex; justify-content: space-between;">
                                                <div class="css-1sh5juu">Local currency (Euro)</div>
                                                <div class="small css-skkly2">
                                                    <div class="css-1xpmvh7">&#36;22.00</div>
                                                </div>
                                            </div>
                                        </div>
                                        <span data-testid="bpd-cta"><button role="button" type="submit"
                                                                            class="css-hc030e"><div class="css-14f60nc"><div>Next</div></div></button></span>
                                    </div>
                                </div>
                                <div style="width: 374.875px;">
                                    <div class="css-1eib43e">
                                        <div class="css-1gfl9a5">Two-hour Port Cruise with Live Commentary</div>
                                        <div class="css-18wiupk">
                                            <div class="css-mifb2i">
                                                <div class="css-1yg2mdt">
                                                    <svg viewBox="0 0 22 22" width="22" height="22"
                                                         color="hsl(0, 0%, 20%)" role="img">
                                                        <path
                                                            d="M11.52 6v5.25L16 13.91l-.75 1.27L10 12V6zm-6.2 10.7A7.83 7.83 0 0011 19a7.65 7.65 0 005.63-2.35A7.76 7.76 0 0019 11a7.59 7.59 0 00-2.4-5.63A7.59 7.59 0 0011 3a7.76 7.76 0 00-5.68 2.4A7.65 7.65 0 003 11a7.83 7.83 0 002.32 5.68zM3.91 4A9.69 9.69 0 0111 1a9.53 9.53 0 017 3 9.53 9.53 0 013 7 9.69 9.69 0 01-3 7.09A9.6 9.6 0 0111 21 9.94 9.94 0 011 11a9.6 9.6 0 012.91-7z"
                                                            fill="hsl(0, 0%, 20%)"></path>
                                                    </svg>
                                                </div>
                                                <div class="css-8atqhb">
                                                    <div class="css-1xlzx9v">
                                                        <div class="css-1vgk0gh">Wed, Jul 29 11:30 AM</div>
                                                    </div>
                                                    <div class="css-18p1y7y">Arrive at the start of this timeslot</div>
                                                </div>
                                            </div>
                                            <div class="css-mifb2i">
                                                <div class="css-1yg2mdt">
                                                    <svg viewBox="0 0 22 22" width="22" height="22"
                                                         color="hsl(0, 0%, 20%)" role="img">
                                                        <path
                                                            d="M20.2 9.2V5.5a1.79 1.79 0 00-1.8-1.8H3.7a1.79 1.79 0 00-1.8 1.8v3.7a1.8 1.8 0 010 3.6v3.7a1.79 1.79 0 001.8 1.8h14.7a1.79 1.79 0 001.8-1.8v-3.7a1.79 1.79 0 01-1.8-1.8 1.73 1.73 0 011.8-1.8zm-1.9-1.4a3.58 3.58 0 00-1.8 3.2 3.82 3.82 0 001.8 3.2v2.3h-3.7v-.9h-1.8v.9H3.7v-2.3A3.58 3.58 0 005.5 11a3.69 3.69 0 00-1.8-3.2V5.5h9.2v.9h1.8v-.9h3.7v2.3z"
                                                            fill="hsl(0, 0%, 20%)"></path>
                                                        <path d="M12.8 8.2h1.8V10h-1.8zM12.8 11.9h1.8v1.8h-1.8z"
                                                              fill="hsl(0, 0%, 20%)"></path>
                                                    </svg>
                                                </div>
                                                <div class="css-8atqhb">
                                                    <div class="css-1qm1lh">
                                                        <div class="css-1xlzx9v">
                                                            <div class="css-1vgk0gh">{{$trip->name}}</div>
                                                        </div>
                                                        <div class="css-1hkcgpz" >
                                                        <p class="package"></p>
                                                            <div class="css-1juxtrk">EGP&nbsp;403.62</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-mj2shq">
                                            <div style="display: flex; justify-content: space-between;">
                                                <div class="css-1gfl9a5">Total</div>
                                                <div class="large css-skkly2">
                                                    <div class="css-1vsmjje">EGP&nbsp;403.62</div>
                                                </div>
                                            </div>
                                            <div style="display: flex; justify-content: space-between;">
                                                <div class="css-1sh5juu">Local currency (Euro)</div>
                                                <div class="small css-skkly2">
                                                    <div class="css-1xpmvh7">€22.00</div>
                                                </div>
                                            </div>
                                        </div>
                                        <span data-testid="bpd-cta"><button role="button" type="submit"
                                                                            class="css-hc030e"><div class="css-14f60nc"><div>Next</div></div></button></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

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
