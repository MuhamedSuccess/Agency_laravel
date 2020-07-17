<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\reservations;

class Trip extends Model
{
    protected $table = 'trip';
    public $timestamps = false;




    /**
     * Fillable fields for a فقهح.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'trip_cover',
        'days',
        'date',
        'trip_plan_id',
        'guide_id',
        'tourism_type_id',
    ];

    public function comments()
    {
        return $this->hasMany(Comment::class)->whereNull('parent_id');
    }

    public function reservations()
    {
       return $this->hasMany(reservation::class);
    }  

    public function User()
    {
        return $this->belongsTo(User::class,'user_id','id');
    }

    
    public function author_name()
    {
        
        return $this->belongsTo(User::class,'author','id');
    }
}