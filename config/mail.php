<?php


return [ 
        
    'driver' => 'smtp',
    
    'host' => 'smtp.sendgrid.net',
    
    'port' => 587,
    
        'encryption' => 'tls', 
    
    'username' => env('MAIL_USERNAME'),
    
    'password' => env('MAIL_PASSWORD'),
    
    'sendmail' => '/usr/sbin/sendmail -bs' 
];


