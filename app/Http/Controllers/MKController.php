<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MKController extends Controller
{
    public function allImg()
    {
        $images = \File::allFiles(public_path('img'));
        return View('mk.list')->with(array('images'=>$images));
    }
}
