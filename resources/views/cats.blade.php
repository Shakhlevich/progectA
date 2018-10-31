@extends('layouts.base')
@section('content')
<h2 class="">Категории</h2>
	  
	  <div class="Maintext">
	  @foreach($cats as $cat)
	  <h2>{{$cat->name}}</h2>
	  <div>
	  {!!$cat->body!!}
	  </div>
		@foreach($cat->products()->get() as $one)
		<hr/>
		@if($one->picture)
			<img class="product" src="{{asset('uploads/thumb/'.$one->picture)}}"/>
		@else
			<img class="product" src="{{asset('media/img/no_photo.png')}}"/>
	    @endif
	  
	  <h3>
	   <a  href="{{asset('product/'.$one->id)}}" class="product_link">
	    {{$one->name}}
	   </a>
	  </h3>
	  {!!$one->body!!}
	  
	  

		@endforeach
	  @endforeach
	  </div>
	  
		@endsection