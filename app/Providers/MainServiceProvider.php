<?php

namespace App\Providers;
use View;


use Illuminate\Support\ServiceProvider;
use App\Providers\ViewComposers\SiseComposer;
class MainServiceProvider extends ServiceProvider
{
   
	/**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
     View::composer('*', 'App\Providers\ViewComposers\SizeComposer');
	  //echo 'Open';
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
