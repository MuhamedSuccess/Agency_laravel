<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Notifications extends Model
{
    protected $reciever;
    protected $sender;
    protected $unread;
    protected $type;
    protected $parameters;
    protected $referenceId;
    protected $createdAt;


    protected $table = 'notifications';
    public $timestamps = true;

    protected $guarded = [
        'id',
    ];


    protected $fillable = [
        'sender',
        'reciever',
        'type',
        'unread',
        'refernce_id',
        'created_at',
        'parameters',
        'notifiable_type',
        'notifiable_id',
        'data',
        'read_at'
    ];

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];



    public static function readNotification($type = null, $id = null)
    {
        $userId = \Auth::user()->id;

        // $notifications = DB::select('SELECT * FROM notifications where reciever = ' . $userId . '');
        $notifications = DB::table('notifications')->where('reciever', $userId)->get();

        // $notifications =  json_decode(json_encode($notifications), true);
        // $notification = Notifications::where('notifiable_id', $userId)
        //     // ->where('link_id', $id)
        //     // ->where('type', $type)
        //     ->update(['unread' => 0]);

        return $notifications;
    }

    // public static function commentReplied($data = null)
    // {
    //     $message = 'Your level commision $ ' . number_format($data['commision'], 2) . ' has been approved.';
    //     $notifications = Notifications::create([
    //         'type'                  => $data['type'],
    //         'notifiable_id'         => $data['notifiable_id'],
    //         'link_id'               => $data['link_id'],
    //         'data'                  => $message,
    //         'read'                  => 0,
    //         'created_by'            => $data['notifiable_id'],
    //         'modified_by'           => $data['notifiable_id'],
    //         'created_at'            => Carbon::now(),
    //         'updated_at'            => Carbon::now(),
    //     ]);
    // }

    /**
     * Message generators that have to be defined in subclasses
     */
    // abstract public function messageForNotification(Notification $notification);
    // abstract public function messageForNotifications(array $notifications);


    /**
     * Generate message of the current notification.
     */
    // public function message(): string
    // {
    //     return $this->messageForNotification($this);
    // }

    //
}