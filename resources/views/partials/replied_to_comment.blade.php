<?php
use App\Models\User;
use App\Models\Trip;

$sender = User::find($notification->sender);
$reciever = User::find($notification->reciever);
$trip = Trip::find($notification->data['thread']['trip_id']);

if($notification->data['thread']['parent_id'] == null){
    $message = $sender->name." commented on trip ". $trip->name;
}else{
    $message = $sender->name." repield on your comment";
}


?>




<a href="{{route('trip.show',$notification->data['thread']['trip_id'])}}">
    {{$message}}
</a>