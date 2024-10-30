<?php

use App\Http\Controllers\Api\MobileApiController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('checkout', function(){
    return response()->json([
        'status' => true,
        'message' => 'User Information',
        'data' => 'Checking ...',
    ], 200);
});

Route::get('getData', [MobileApiController::class, 'index'])->name('getData');
Route::post('postData', [MobileApiController::class, 'postData'])->name('postData');