<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\StatController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);


Route::get('/tags', [TagController::class, 'get_all_tags']);
Route::get('/tag/{id}', [TagController::class, 'get_tag_by_id']);
Route::post('/tag/add', [TagController::class, 'storeTag']);
Route::put('/tag/update/{id}', [TagController::class, 'updateTag']);
Route::delete('/tag/destroy/{id}', [TagController::class, 'DeleteTag']);





Route::get('/posts', [PostController::class, 'get_all_posts']);

Route::get('/del/posts', [PostController::class, 'get_deleted_posts']);

Route::get('/post/{id}', [PostController::class, 'get_post_by_id']);
Route::post('/post/add', [PostController::class, 'Add_Post']);
Route::put('/post/update/{id}', [PostController::class, 'updatePost']);

Route::put('/post/update/pin/{id}', [PostController::class, 'updatePinnedPost']);

Route::put('/post/restore/{id}', [PostController::class, 'RestorePost']);

Route::delete('/post/destroy/{id}', [PostController::class, 'DeletePost']);

Route::get('/stats', [StatController::class, 'Index']);