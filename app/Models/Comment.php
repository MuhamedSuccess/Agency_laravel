<?php

namespace App\Models;

use Illuminate\Database\Eloquent\SoftDeletes;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{


    protected $table = 'comment';
    public $timestamps = false;
    // protected $dateFormat = 'U';




    protected $fillable = ['user_id', 'trip_id', 'date', 'body', 'parent_id'];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * The has Many Relationship
     *
     * @var array
     */
    public function replies()
    {
        return $this->hasMany(Comment::class, 'parent_id');
    }
}