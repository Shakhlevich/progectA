@extends('layouts.base')

@section('scripts')
@parent
 <script src="{{asset('media/ckeditor/ckeditor.js')}}"></script>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Оставить отзыв о компании</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" action="{{asset('home')}}">
					{!!csrf_field()!!}
						
 <div class="form-group">
    <label for="exampleInputName2">Name</label>
    <input  name="Your name" type="text" class="form-control" id="exampleInputName2" placeholder="Ваше имя">
  </div>
  
  <label for="exampleInputName2">Оставить отзыв</label>
  <textarea name="body" class="ckeditor form-control" rows="3"></textarea>
  <button type="submit" class="btn btn-default">Submit</button>
</form>


                </div>
            </div>
        </div>
    </div>
</div>
@endsection
