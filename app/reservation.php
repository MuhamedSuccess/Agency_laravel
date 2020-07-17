<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Models\Trip;
use App\Models\User;


class reservation extends Model
{
    protected $table = 'reservation';
    public $timestamps = false;

    protected $primaryKey = 'id';
    protected $fillable = ['user_id', 'trip_id', 'reserve','number','phone'];


    //public function User()
    //{
    //    return $this->belongsTo(User::class,'user_id','id');
    //}

    public function trip()
    {
        return $this->belongsTo(Trip::class,'trip_id','id');
    } 

   public function user()
   {
       return $this->belongsTo(User::class);
   }

}
