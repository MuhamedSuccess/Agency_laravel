<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

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
        'tourism_type_id'               
    ];
    
}
