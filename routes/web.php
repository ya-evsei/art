<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MKController;

Route::get('/', [MkController::class, 'allImg']);
