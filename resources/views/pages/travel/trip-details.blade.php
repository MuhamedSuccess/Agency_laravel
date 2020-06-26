<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Product filter in php</title>

    {{-- <script src="{{asset('nav-filter/js/jquery-1.10.2.min.js')}} "></script> --}}

    {{-- <script src=" {{asset('nav-filter/js/bootstrap.min.js')}} "></script> --}}
    <link rel="stylesheet" href="  {{asset('nav-filter/css/bootstrap.min.css')}} ">
    <link href="{{asset('nav-filter/css/jquery-ui.css')}} " rel="stylesheet">
    <link href="{{asset('comment/css/style.css')}} " rel="stylesheet">
    <script src="{{asset('profile/js/jquery.3.2.1.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('profile/js/bootstrap.min.js')}}" type="text/javascript"></script>
    <!-- Custom CSS -->
    {{-- <link href="{{asset('nav-filter/css/style.css')}} " rel="stylesheet"> --}}
</head>

<body>
    <!-- Page Content -->
    <div class="container">
        <div class="row">


            {{-- <h1>{{$trip}}</h1> --}}
            {{-- <h3>array data</h3>
            @foreach ($comments as $comment)
            {{$comment['body']}}
            {{$comment['parent_id']}}

            @endforeach --}}
            {{-- <p>{{$comments}}</p> --}}

            <div class="details-section">
                {{-- <img src="storage/trip/cover_images/{{$trip['trip_cover']}}"> --}}
                <img src="/storage/trip/cover_images/{{$trip['trip_cover']}}" height="25%" width="100%"
                    class="img-responsive">
                <h3>{{$trip['name']}}</h3>
                <div>

                    <?php
                        $description =  htmlspecialchars_decode($trip['description']);
                        echo $description;
                    ?>

                </div>
            </div>
            <br />
            <h4>Filter</h4>
            <br />


            {{-- @include('partials.nav-filter') --}}

            <div class="col-md-9">
                <br />
                <div class="row filter_data">

                </div>
            </div>



            <h4 class="text-left">Display Comments</h4>

            <div class="col-md-8" id="comment-display">
                @include('comment.commentsDisplay', ['comments' => $comments, 'trip_id' => $trip->id])
            </div>

        </div>



        <hr />
        @include('comment.add-comment')


    </div>

    </div>



    <!--   Core JS Files   -->



    <script src="{{asset('comment/js/main.js')}}"></script>

    <script>
        $(document).ready(function(){

        // $("#submit").click(function(e){
        //     e.preventDefault();

        // $.ajaxSetup({
        //           headers: {
        //               'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        //           }
        //       });

        //     $.get('{{action("CommentController@displayComments", [$trip->id])}}', function(data){

        //         $("#comment-display").html(data);
        //     });

        //     $.get('/comments-display', function(data){

        //         $("#comment-display").html(data);
        // });

            // $.ajax({
            //     url: "{{url('comments-display')}}",
            //     method: 'GET',
                
            //     success: function(result){
            //         console.log(result);
            //         $("#comment-display").html(result);
            //     }

            // });

        });
    
    </script>


    {{-- <script src="{{asset('nav-filter/js/jquery-ui.js')}}"></script> --}}

    {{-- <script>
        $(document).ready(function() {

            filter_data();

            function filter_data() {
                $('.filter_data').html('<div id="loading" style="" ></div>');
                var action = 'fetch_data';
                var minimum_price = $('#hidden_minimum_price').val();
                var maximum_price = $('#hidden_maximum_price').val();
                var brand = get_filter('brand');
                var ram = get_filter('ram');
                var storage = get_filter('storage');
                $.ajax({
                    url: "fetch_data.php"
                    , method: "POST"
                    , data: {
                        action: action
                        , minimum_price: minimum_price
                        , maximum_price: maximum_price
                        , brand: brand
                        , ram: ram
                        , storage: storage
                    }
                    , success: function(data) {
                        $('.filter_data').html(data);
                    }
                });
            }

            function get_filter(class_name) {
                var filter = [];
                $('.' + class_name + ':checked').each(function() {
                    filter.push($(this).val());
                });
                return filter;
            }

            $('.common_selector').click(function() {
                filter_data();
            });

            $('#price_range').slider({
                range: true
                , min: 1000
                , max: 65000
                , values: [1000, 65000]
                , step: 500
                , stop: function(event, ui) {
                    $('#price_show').html(ui.values[0] + ' - ' + ui.values[1]);
                    $('#hidden_minimum_price').val(ui.values[0]);
                    $('#hidden_maximum_price').val(ui.values[1]);
                    filter_data();
                }
            });

        });

    </script> --}}

</body>

</html>