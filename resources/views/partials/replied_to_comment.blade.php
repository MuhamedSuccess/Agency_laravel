<?php
use App\Models\User;
use App\Models\Trip;

$notification = json_decode(json_encode($notification), true); //Convert an object to associative array

$sender = User::find($notification['sender']);
$reciever = User::find($notification['reciever']);
$trip = Trip::find(json_decode($notification['data'])->thread->trip_id);



    // echo $notification->sender;    

// var_dump(json_decode($notification['data']));
// print_r($notification);

if(json_decode($notification['data'])->thread->parent_id == null){
    $message = $sender->name." commented on trip ";
}else{
    $message = $sender->name." repield on your comment";
}


?>




<a href="{{route('trip.show',json_decode($notification['data'])->thread->trip_id)}}">
    {{$message}}
</a>