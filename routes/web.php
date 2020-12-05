<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\MKController;
use App\Http\Controllers\MkImageController;

Route::get('/', [MkController::class, 'allImg']);
Route::get('mk-img', [ MkImageController::class, 'index' ]);
Route::post('mk-img', [ MkImageController::class, 'store' ])->name('images.store');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
