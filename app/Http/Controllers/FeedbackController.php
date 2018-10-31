<?php

namespace App\Http\Controllers;

use App\Feedback;

class FeedbackController extends Controller
{
    public function getIndex(){
		$feeds = Feedback:: where('showhide', 'show')
		->orderby('id', 'DESC')
		->paginate('10');
		return view ('feedback', compact('feeds'));
		
	}
}
