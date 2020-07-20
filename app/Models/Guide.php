<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Guide extends Model
{
    protected $table = 'guide';

    public function reservations()
    {
        return $this->hasManyThrough(Reservation::class, Trip::class);
    }

    public function trips()
    {
        return $this->hasMany(Trip::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
