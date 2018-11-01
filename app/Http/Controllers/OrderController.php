<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\OrderRequest;
use Auth;
use App\Order;
use App\Libs\Cookie;

class OrderController extends Controller{

	public function postOrder(OrderRequest $r){
		$all = [];
		foreach($_POST as $key => $value){
		$id = (int) $key;
		if($id > 0){
			$all[$id] = $value;
		}
		}
		$body = serialize($all);
		$r['user_id'] = (Auth::guest())?0:Auth::user()->id;
		$r['body']=$body;
		Order::create($r->all());
		
		//foreach($_COOKIE as $key => $value){
			//$id = (int)$key;
			//if($id>0){
				//setcookie($id, '', time()-1, '/');
			//}
		
		$cook = new Cookie;
		$cook -> deleteAll();
		//\App::make('\App\Libs\Cookie')->deleteAll();
		return redirect()->back();
		
	}
}
