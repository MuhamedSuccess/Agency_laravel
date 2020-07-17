<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class reservations extends Model
{
    public function User()
    {
        return $this->belongsTo(User::class);
    }

    public function Trip()
    {
        return $this->belongsTo(Trip::class);
    } 
}
