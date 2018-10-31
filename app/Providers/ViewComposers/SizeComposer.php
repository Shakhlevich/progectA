<?php

namespace App\Providers\ViewComposers;
use Illuminate\Contracts\View\View;
use App\Catalog;
use Auth;

class SizeComposer
{
public function compose(View $view)
{

 $v_catalogs = Catalog::all();
 $view->with('v_catalogs', $v_catalogs);
 }
}