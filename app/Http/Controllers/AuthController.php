<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginRequest;
use App\Http\Requests\SignupRequest;
use App\Models\User;
use App\Traits\ApiTrait;
use Auth;
use Hash;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Request;

class AuthController extends Controller
{
    public function __construct() {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
    }
    public function login(LoginRequest $request)
    {

        $user = User::where('phone', $request->phone)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return ApiTrait::errorMessage([ 'password' => __('message.login.password')],__('message.login.faild'),401);
        }
    
        $token = "Bearer ". $user->createToken('token-name')->plainTextToken;
        $user->token = $token;
        return ApiTrait::data(compact('user'),__('message.login.success'),200);

    }



    public function register(SignupRequest $request)
    {
        $data = $request->safe()->except('password_confirmation','password');
        $data['password'] = Hash::make($request->password);
        try{
            $user = User::create($data);
        }catch(\Exception $e){
            return ApiTrait::errorMessage([],"something went wrong",500);
        }
        $token = 'Bearer '.$user->createToken('JWT')->plainTextToken;
        $user->token = $token;
        return ApiTrait::data(compact('user'),"user Created Successfully",201);
    }

  
}

