@extends('layouts.base')
@section('content')

<h2 class="">Отзывы</h2>
	  
	  <div class="Maintext">
	  
	  @foreach($feeds as $one)
<div class="room">
{!!$one->body!!}
<div class="time">
{{$one->creates_of}}
</div>
</div>
@endforeach
	  </div>
		@endsection