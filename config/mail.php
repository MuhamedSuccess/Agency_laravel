<?php


return [

    'driver' => 'smtp',

    'host' => 'smtp.sendgrid.net',

    'port' => 587,

        'encryption' => 'tls',

    'username' => env('MAIL_USERNAME'),

    'password' => env('MAIL_PASSWORD'),

    'sendmail' => '/usr/sbin/sendmail -bs' ,

    'stream' => [
        'ssl' => [
            'allow_self_signed' => true,
            'verify_peer' => false,
            'verify_peer_name' => false,
        ],
    ],
];




