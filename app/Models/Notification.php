<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

abstract class Notification
{
    protected $reciever;
    protected $sender;
    protected $unread;
    protected $type;
    protected $parameters;
    protected $referenceId;
    protected $createdAt;


    protected $table = 'notifications';
    protected $timestamps = true;

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



    /**
     * Message generators that have to be defined in subclasses
     */
    abstract public function messageForNotification(Notification $notification);
    abstract public function messageForNotifications(array $notifications);


    /**
     * Generate message of the current notification.
     */
    public function message(): string
    {
        return $this->messageForNotification($this);
    }

    //
}