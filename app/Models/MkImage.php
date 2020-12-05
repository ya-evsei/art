<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MkImage extends Model
{
	use HasFactory;
	protected $fillable = [
		'title', 'src'
	];
}
