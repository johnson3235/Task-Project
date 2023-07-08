<?php

namespace App\Http\Controllers;

use App\Http\Requests\AddTagRequest;
use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignupRequest;

use App\Models\Tags;
use App\Models\User;
use App\Traits\ApiTrait;
use Auth;
use Hash;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Request;

class TagController extends Controller
{
    public function __construct() {
        $this->middleware('auth:sanctum');
    }


    public function get_all_tags()
    {

        $tags = Tags::all();
        return ApiTrait::data(compact('tags'),'Tags Get Successfully',200);
    
    }

    public function get_tag_by_id($id)
    {

        try{
            $tag = Tags::FindOrFail($id);
        }catch(\Exception $e){
            return ApiTrait::errorMessage(['id'=>'invalid Tag Id'],"something went wrong",500);
        }  
        return ApiTrait::data(compact('tag'),'Tag Get Successfully',200);     

    }
    public function storeTag(AddTagRequest $request)
    {
       
        try{
            $tag = new Tags;
            $tag->name = $request->name;
            $tag->save();
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Tag Created Successfully",201);
    }


    public function updateTag(AddTagRequest $request,$id)
    {
        
        try{
            $tag =  Tags::FindOrFail($request->id);
            $tag->name = $request->name;
            $tag->save();
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Tag Updated Successfully",200);
    }



    public function DeleteTag($id)
    {
        
        try{
            $tag =  Tags::FindOrFail($id);
            Tags::where('id',$id)->delete();
        
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        return ApiTrait::successMessage("Tag Deleted Successfully",200);
    }



  
}

