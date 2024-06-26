<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CityController;
use App\Http\Controllers\OrdersController;
use App\Http\Controllers\SchedulesController;

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

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout']);
Route::post('add_schedule', [SchedulesController::class, 'store']);
Route::post('add_order', [OrdersController::class, 'store']);
Route::get('get_schedules', [SchedulesController::class, 'index']);
Route::get('get_orders', [OrdersController::class, 'index']);
Route::put('/orders/{order}', [OrdersController::class, 'updatePaymentStatus']);
Route::get('/get_cities', [CityController::class, 'index']);
