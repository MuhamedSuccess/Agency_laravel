@extends('layouts.trip-create')

@section('template_title')

@endsection

@section('head')
@endsection

@section('content')

<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
    <div class="wrapper wrapper--w960">
        <div class="card card-2">
            <div class="card-heading"></div>
            <div class="card-body">
                <h2 class="title">Create Trip</h2>
                <form method="POST" enctype='multipart/form-data' action="/trip-create">
                    @csrf

                    <div class="input-group">
                        <input class="input--style-2" type="text" placeholder="Name" id="name" name="name">
                    </div>


                    <div class="input-file-container">
                        <!--<input type="file"  id="image" #tripImage formControlName="image">-->
                        <input class="input-file" name="cover" id="my-file" type="file">
                        <!-- <label tabindex="0" for="my-file" class="input-file-trigger">Select a file...</label> -->
                    </div>



                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <input class="input--style-2 js-datepicker" type="text" placeholder=" Trip Date"
                                    name="date">
                                <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <input class="input--style-2" type="number" placeholder="Days" id="days" name="days">
                                <!-- <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i> -->
                            </div>
                        </div>
                    </div>
                    <div class="row row-space">
                        <div class="col-4">
                            <div class="input-group">
                                <textarea class="form-control" formControlName="description" rows="10" cols="80"
                                    id="description" placeholder="Trip Description" name="description"></textarea>

                            </div>
                        </div>
                    </div>


                    <div class="input-group">
                        <div class="rs-select2 js-select-simple select--no-search">
                            <label for="trip_plan" class="col-md-10 col-form-label">Trip plans</label>
                            <select name="trip_plan">
                                @foreach($trip_plans as $plan)
                                <option value="{{$plan->id}}" id="plan">{{$plan->name}}</option>
                                @endforeach
                            </select>
                            <div class="select-dropdown"></div>
                        </div>
                    </div>

                    <div class="col-2">
                            <div class="input-group">
                                <input class="input--style-2" type="number" placeholder="children cost" id="days" name="children">
                                <!-- <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i> -->
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="input-group">
                                <input class="input--style-2" type="number" placeholder="adult cost" id="days" name="adults">
                                <!-- <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i> -->
                            </div>
                        </div>

                        <div class="col-2">
                            <div class="input-group">
                                <input class="input--style-2" type="number" placeholder="senior cost" id="days" name="seniors">
                                <!-- <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i> -->
                            </div>
                        </div>

                    <div class="input-group">
                        <div class="rs-select2 js-select-simple select--no-search">
                            <label for="guide" class="col-md-10 col-form-label">Guide</label>

                            <select name="guide">
                                @foreach($guides as $guide_person)
                                <option value="{{$guide_person->id}}" id="guide">{{$guide_person->name}}</option>
                                @endforeach
                            </select>

                            <div class="select-dropdown"></div>
                        </div>
                    </div>
                    <div class="input-group">
                        <div class="rs-select2 js-select-simple select--no-search">
                            <label for="tourim_type" class="col-md-10 col-form-label">Tourism Types</label>
                            <select name="tourim_type">
                                @foreach($tourism_types as $type)
                                <option value="{{$type->id}}">{{$plan->name}}</option>
                                @endforeach
                            </select>
                            <div class="select-dropdown"></div>
                        </div>


                        <div class="rs-select2 js-select-simple select--no-search">
                            <label for="tourim_type" class="col-md-10 col-form-label">Tourist Place</label>
                            <select name="tourist_place">
                                @foreach($tourist_places as $place)
                                <option value="{{$place->id}}" id="place">{{$place->name}}</option>
                                @endforeach
                            </select>
                            <div class="select-dropdown"></div>
                        </div>
                    </div>

                    <div class="p-t-30">
                        <input class="btn btn--radius btn--green" type="submit" id="submit" value="Create">
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('description');
</script>
<script src="tinymce/tinymce.min.js"></script>
<script>
    tinymce.init({
        selector: '#editor'
    });
</script>
{{-- <script>
    $(document).ready(function(){

        $("#submit").click(function(e){
            e.preventDefault();
            $.ajax({
                url: "{{url('/trip/create')}}",
method: 'POST',
data: {
name: $("#name").val(),
description: $("#description").val(),
days: $("#description").val(),
plan: $("#plan").val(),
place: $("#place").val(),
guide: $("#place").val(),
},
success: function(result){
console.log(result);
}

});

});
});
</script> --}}
