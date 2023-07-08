<?php

namespace App\Http\Controllers;


use App\Http\Requests\AddPostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use App\Traits\ApiTrait;
use App\Traits\Media;
use Auth;


class PostController extends Controller
{

    public function __construct() {
        $this->middleware('auth:sanctum');

    }
    public function get_all_posts()
    {
        $userId = Auth::id();
        $posts = Post::where([
            ['user_id',$userId],
            ['disable',false]
        ])->orderby('pinned','desc')->get();
        foreach($posts as $post)
        {
            $tags = $post->tags; 
        }
        return ApiTrait::data(compact('posts'),'Posts Get Successfully',200);
    }

    public function get_deleted_posts()
    {
        $userId = Auth::id();
        $posts = Post::where([
            ['user_id',$userId],
            ['disable',true]
        ])->orderby('pinned','desc')->get();
        foreach($posts as $post)
        {
            $tags = $post->tags; 
        }
        return ApiTrait::data(compact('posts'),'Posts Get Successfully',200);
    }


    public function get_post_by_id($id)
    {

        try{
            $user = Auth::user();

            $post = Post::where('id',$id)->get();
            if(sizeof($post)==0)
            {
                return ApiTrait::errorMessage(['id'=>'invalid Tag Id'],"something went wrong",500);
            }
            $post=$post[0];
            $post->tags;
            $post->user_id = $user;
        }catch(\Exception $e){
            return ApiTrait::errorMessage(['id'=>'invalid Tag Id'],"something went wrong",500);
        }  
        return ApiTrait::data(compact('post'),'Post Get Successfully',200);     

    }
    public function Add_Post(AddPostRequest $request)
    {
        $userId = Auth::id();
        try{
            $post = new Post;
            $post->title = $request->title;
            $post->body = $request->body;
            $post->pinned = $request->pinned;
            $image = $request->input('image');
            $decodedImage =  base64_decode($image);
        
            $path = Media::upload2('',$decodedImage,'posts');
            $post->image = $path;
            
            $post->disable = false;
            $post->user_id = $userId;
            $post->save();
             
            $post->tags()->attach($request->tags);
        }catch(\Exception $e){
            return ApiTrait::errorMessage(["error"=> $e ],"something went wrong",500);
        }
        return ApiTrait::successMessage("Post Created Successfully",201);
    }


    public function updatePost(UpdatePostRequest $request,$id)
    {
        
        try{
            $post =  Post::FindOrFail($request->id);

            $post->title = $request->title;
            $post->body = $request->body;
            $post->pinned = $request->pinned;
            if ($request->has('image')) {
                $image = $request->input('image');
                $decodedImage =  base64_decode($image);
            
                $path = Media::change_image('',$decodedImage,'posts',$post->image);
                $post->image = $path;
            }

            $post->tags()->sync($request->tags);
            $post->save();

        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Post Updated Successfully",200);
    }


    public function updatePinnedPost($id)
    {
        
        try{
            $post =  Post::FindOrFail($id);

            $post->pinned = !$post->pinned;
           
            $post->save();

        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Post pinned Updated Successfully",200);
    }

    public function RestorePost($id)
    {
        
        try{
            $post =  Post::FindOrFail($id);
            $post->disable = false;
            $post->save();
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Post Restored Successfully",200);
    }


    public function DeletePost($id)
    {
        
        try{
            $post =  Post::FindOrFail($id);
            $post->disable = true;
            $post->save();
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Post Deleted Successfully",200);
    }

  

  
}

