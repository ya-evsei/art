<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\MkImage;

class MkImageController extends Controller
{
	public function index()
	{
		return view('mk.img');
	}

	public function store(Request $request)
	{
		$request->validate([
			'images' => 'required',
		]);

		if ($request->hasfile('images')) {
			$images = $request->file('images');

			foreach($images as $image) {
				$name = Str::random(6).'.'.$image->extension();
				$path = $image->storeAs('img/mk/pics', $name, 'public');

				MkImage::create([
					'title' => 'Картина',
					'src' => '/storage/'.$path
				]);
			}
		}

		return back()->with('success', 'Images uploaded successfully');
	}
}