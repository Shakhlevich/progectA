<?php

namespace App\Http\Controllers;

use App\Maintext;

class BaseController extends Controller
{
    public function getIndex(){
		$obj=Maintext::where('url', 'index')->first();
		return view ('static', compact('obj'));
	}
}
