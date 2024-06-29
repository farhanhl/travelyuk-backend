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

// Auth
Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::post('logout', [AuthController::class, 'logout']);
// End Of Auth Section

// Schedule
Route::get('get_schedules', [SchedulesController::class, 'index']);
Route::post('add_schedule', [SchedulesController::class, 'store']);
Route::post('search_schedules', [SchedulesController::class, 'searchSchedule']);
// End Of Schedule Secntion

// Order
Route::get('get_orders', [OrdersController::class, 'index']);
Route::get('get_order/{user_id}', [OrdersController::class, 'getOrder']);
Route::get('get_orders/{user_id}', [OrdersController::class, 'getOrdersByUser']);
Route::post('add_order', [OrdersController::class, 'store']);
Route::put('/change_status/{order}', [OrdersController::class, 'updateStatus']);
// End Of Order Section

// City
Route::get('/get_cities', [CityController::class, 'index']);
// End Of City Section