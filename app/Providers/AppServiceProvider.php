<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Order;
use Auth;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Order::created(function($obj){
			if(isset($obj->email)){
			$user_email=$obj->email;
			$name=$obj->name;
			
			}
			elseif(Auth::user()){
				$name= Auth::user()->name;
				$user_email=Auth::user()->email;
			}
			
			$theme='Уважаемый'. '$name'. '!Вам собщение';
		$body='<h1>Текст</h1>';
		$header = 'MIME-Version: 1.0' . "\r\n";
		$header .='Content-type: text/html; charset=UTF-8' . "\r\n";
		$header .='From: ' .env('MAIL_FROM_ADDRESS'). "\r\n";
		@mail($user_email, $theme, $body, $header);
		//@mail(env('MAIL_FROM_ADDRESS'));
		});
		

	}
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
