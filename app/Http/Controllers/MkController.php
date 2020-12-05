<?php

namespace App\Http\Controllers;

use App\Models\MkImage;
use Illuminate\Http\Request;

class MKController extends Controller
{
	public function allImg()
	{
		$img = MkImage::all();
		return View('mk.list')->with(array('images' => $img));
	}
}