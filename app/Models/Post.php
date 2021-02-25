<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use SoftDeletes, HasFactory;

    protected $guarded = [];

    protected $table = 'posts';

    public $timestamps = true;

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
