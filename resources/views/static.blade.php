@extends('layouts.base')
@section('content')
<h2 class="">{{$obj->name}}</h2>
	  
	  <div class="Maintext">{!!$obj->body!!}</div>
		@endsection