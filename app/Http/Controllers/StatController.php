<?php

namespace App\Http\Controllers;


use App\Http\Requests\AddPostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use App\Models\User;
use App\Traits\ApiTrait;
use App\Traits\Media;
use Auth;


class StatController extends Controller
{
    public function __construct() {
        $this->middleware('auth:sanctum');

    }
    public function Index()
    {
        
        $user_count = User::count();
        $posts_count = Post::Where('disable',false)->count();
        $users_WithZero_Posts_Count = User::has('posts', '=', 0)->count();
        return ApiTrait::data(compact('user_count','posts_count','users_WithZero_Posts_Count'),"Status Get Successfully",200);
    }

  
}

