@extends('layouts.base')
@section('content')
<h2 class="">{{$obj->name}}</h2>
	  
	  <img class="product" src="{{asset('uploads/thumb/'.$obj->picture)}}"/>
	  <div class="maintext">
		  
		{!!$obj->body!!}
		
		<br/>
		<a href="{{asset('basket/add/'.$obj->id)}}" class="btn btn-lg btn-default">Добавить в корзину</a>
		</div>
		@endsection