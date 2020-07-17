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
    

    <!--<img class="img-responsive img-circle" src="{{asset('storage/avatar/'.$user->profile->avatar)}}">-->
    {{-- <img src="{{asset('storage/avatar/'.Auth::user()->profile->avatar)}}" id="avatar" class="user-avatar
    rounded-circle"
    width=40> --}}
    <strong> 
           <i class="fa fa-user-circle-o" style="font-size:25px;color:black">
            {{ $user->name }}</i>
    </strong>
        

    <p class="body">
        {{ $comment['body'] }} <br>
        your rating : {{ $comment['rating'] }} 

 <br>
        <span id="time_elapsed"><?php if($comment["date"]) {echo Carbon::parse($comment["date"])->diffForHumans();}?></span>
    </p>
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="{{"reply_btn".$comment['id']}}" class="btn btn-success btn-small reply_btn"
        onclick="toggleSection({{$comment['id']}})">reply</button>

    <div id="reply-section">
        <a href="" id="reply"></a>
        <form method="post" action="{{ route('comments.store') }}">
            @csrf
            <div class="form-group">
                <input type="text" name="body" class="form-control" />
                <input type="hidden" name="trip_id" value="{{ $trip->id }}" />
                <input type="hidden" name="parent_id" value="{{ $comment['id'] }}" />
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-warning" value="Reply" />
                <button class="btn btn-red btn-small btn_cancel"
                    onclick="toggleSection({{$comment['id']}})">cancel</button>
            </div>
        </form>
    </div>

    <div id="replies">
        @include('comment.commentsDisplay', ['comments' => $replies])
    </div>

</div>


@endforeach