<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Order;
class OrderController extends Controller {

	/**
	 * Index page
	 *
     * @param Request $request
     *
     * @return \Illuminate\View\View
	 */
	public function index()
    {
		$all=Order::orderBy('id', 'DESK') ->paginate(10);
		return view('admin.order.index', compact('all'));
	}

}