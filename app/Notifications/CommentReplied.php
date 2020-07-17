<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;

use App\Notifications\Custom;

use Illuminate\Notifications\Notification;
use App\Models\User;

class CommentReplied extends Notification
{

    use Queueable;


    public $thread;


    public function __construct($thread)
    {
        $this->thread = $thread;
    }


    public function via($notifiable)
    {
        return [Custom::class];
    }

    public function toDatabase($notifiable)
    {
        return [
            'thread' => $this->thread,
            'user' => \Auth::user()
        ];
    }

    public function messageForNotification(Notification $notification): string
    {
        return $this->sender->getName() . 'has replied on your comment: ' . substr($this->reference->text, 0, 10);
    }


    /**
     * Generate a message for a multiple notifications
     *
     * @param array $notifications
     * @return string
     */
    // public function messageForNotifications(array $notifications, int $realCount = 0): string
    // {
    //     if ($realCount === 0) {
    //         $realCount = count($notifications);
    //     }

    //     // when there are two
    //     if ($realCount === 2) {
    //         $names = $this->messageForTwoNotifications($notifications);
    //     }
    //     // less than five
    //     elseif ($realCount < 5) {
    //         $names = $this->messageForManyNotifications($notifications);
    //     }
    //     // to many
    //     else {
    //         $names = $this->messageForManyManyNotifications($notifications, $realCount);
    //     }

    //     return $names . ' liked your comment: ' . substr($this->reference->text, 0, 10) . '...';
    // }
}
