<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Post extends Model
{
    use  HasFactory;


    public function tags()
    {
        return $this->belongsToMany(Tags::class);
    }

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */

     public function user()
     {
         return $this->belongsTo(User::class);
     }

     
    protected $fillable = [
        'title',
        'body',
        'name',
        'image',
        'pinned',
        'disable',
      
    ];

    
}
