<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Reservation extends Model
{
    protected $table = 'reservation';
    public $timestamps = false;




     /**
     * Fillable fields for a فقهح.
     *
     * @var array
     */
    protected $fillable = [
        'trip_id',
        'user_id',
        'reserve',
        'number',
        'phone',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
