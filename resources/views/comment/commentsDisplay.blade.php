{{-- {{$user->name}}
--}}

<?php
use Carbon\Carbon;
$replies = [];
?>


@foreach($comments as $comment)

{{-- {{$comment['body']}} --}}
<?php
$replies = App\Models\Comment::find($comment['id'])->replies->map(function($reply){
    return $reply;
});


$user = App\Models\Comment::find($comment['id'])->user;

// echo ($replies)
?>

<div class="display-comment" @if($comment['parent_id'] !=0) style="margin-left:40px;" @endif>
    <img class="img-responsive img-circle" src="{{asset('storage/avatar/'.$user->profile->avatar)}}">
    {{-- <img src="{{asset('storage/avatar/'.Auth::user()->profile->avatar)}}" id="avatar" class="user-avatar
    rounded-circle"
    width=40> --}}
    <strong>{{ $user->name }}</strong><span
        id="time_elapsed"><?php if($comment["date"]) {echo Carbon::parse($comment["date"])->diffForHumans();}?></span>

    <p class="body">{{ $comment['body'] }}</p>
    <button id="{{"reply_btn".$comment['id']}}" class="btn btn-info btn-small reply_btn"
        onclick="toggleSection({{$comment['id']}})">reply</button>

    <div id="reply-section">
        <a href="" id="reply"></a>
        <form>
            @csrf
            <div class="form-group">
                <input type="text" name="body" id="body" class="form-control" />
                <input type="hidden" name="trip_id" id="rip_d" value="{{ $trip->id }}" />
                <input type="hidden" name="parent_id" id="parent_id" value="{{ $comment['id'] }}" />
            </div>
            <div class="form-group">
                <button id="reply-btn" class="btn btn-warning" value="Reply" />
                <button id="cancel" class="btn btn-red btn-small btn_cancel"
                    onclick="toggleSection({{$comment['id']}})">cancel</button>
            </div>
        </form>
    </div>

    <div id="replies">
        @include('comment.commentsDisplay', ['comments' => $replies])
    </div>

</div>


@endforeach

<script>
    //     $(dpcument).ready(function(){

// function postComment(){
    
// }
    
// });
</script>

<script>
    $(document).ready(function(){

        $("#reply-btn").click(function(e){
            e.preventDefault();

            $.ajax({
                url: "{{url('comment/create')}}",
                method: 'POST',
                data: {
                    body: $("#body").val(),
                    trip_id: $("#trip_id").val(),
                    parent_id: $("#parent_id").val(),
                   
                },
                success: function(result){
                    console.log(result);
                }

            });

        });
    });
</script>