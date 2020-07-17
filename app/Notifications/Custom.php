<?php

namespace App\Notifications;

use Illuminate\Notifications\Notification;
use App\Notifications\CommentReplied;
use App\Models\Comment;

class Custom
{

    public function send($notifiable, Notification $notification)
    {
        $data = $notification->toDatabase($notifiable);

        $reciver = '';
        $sender = '';

        if ($data['thread']['parent_id'] != null) {

            $reciver = Comment::find($data['thread']['parent_id'])->user->id;
            $sender = $data['thread']['user_id'];
        } else {
            $sender = \Auth::user();
        }

        return $notifiable->routeNotificationFor('database')->create([
            // 'id' => $notification->id,

            //customize here
            // 'answer_id' => $data['answer_id'], //<-- comes from toDatabase() Method below            
            'type' => get_class($notification),
            'data' => $data,
            'read_at' => null,
            'created_at' => now(),
            'updated_at' => now(),
            'deleted_at' => null,
            'read_at' => null,
            'sender' => $sender,
            'reciever' => $reciver
        ]);
    }
}