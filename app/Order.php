<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    //что разрешаем для вставки
	protected $fillable=[
		
		'body',
		'email',
		'phone',
		'name',
		'town',
		'adress',
		'obl',
		'postindex',
		'user_id'
		
	];
}
