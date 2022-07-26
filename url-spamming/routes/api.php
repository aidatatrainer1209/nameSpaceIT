<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\ShortenController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// Route::resource('users', UsersController::class);
Route::post('register', [UsersController::class, 'register']);
Route::post('login', [UsersController::class, 'login']);
Route::post('shorten-url', [ShortenController::class, 'store']);
Route::get('index-shorten', [ShortenController::class, 'index']);
