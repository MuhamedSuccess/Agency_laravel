<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NotificationsController extends Controller
{
    public  function displayNotification(Request)
    {
        $userId = \Auth::user()->id;

        $notifications = DB::select(SELECT * FROM notifications where 'recieved' = ' . $userId . ');

        // $notifications = Notifications::where('notifiable_id', $userId)
        //     // ->where('link_id', $id)
        //     // ->where('type', $type)
        //     ->update(['unread' => 0]);

        return $notifications;
    }
}