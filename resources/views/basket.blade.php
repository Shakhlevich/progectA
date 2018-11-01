@extends ('layouts.base')
@section('scripts')
@parent
<script src="{{asset('js/order.js')}}"></script>
@endsection
@section ('content')


<h2 id="basket">Моя корзина</h2>
  		<div class="maintext"> 
		
	@if(count($errors) > 0)	\
	<div class="alert alert-danger">
	<strong>Whoops!</strong>Найдены следующие ошибки <br><br>
	<ul>
		@foreach ($errors->all() as $error)
		<li>
		{{$error}}
		</li>
		@endforeach
		</ul>
	</div>
	@endif
<form  method="post" action="{{asset('order')}}">
@csrf
		<table class="table table-bordered table-striped" width="100%">
		<tr>
		   <th>
		    Изображение
		   </th>
		   <th>
		    Наименование
		   </th>
		   <th>
		    Цена, руб.
		   </th>
		   <th>
		    Количество
		   </th>
		   <th>
		    Сумма
		   </th>
		   <th>
		    Удалить
		   </th>
		</tr>
		@php
		$counts=0;
		$itog=0;
		@endphp
		@foreach ($arr as $key=>$value)
		@php
		$count=$value*$products[$key]->price;
		$counts+=$value;
		$itog+=$count;
		@endphp
		<tr>
		    <td>
				@if($products[$key]->picture)
					<img class="product" src="{{asset('uploads/thumb/'.$products[$key]->picture)}}"/>
				@endif
		    </td>
	        <td>{{$products[$key]->name}}</td>
		    <td><span id="price_{{$key}}">{{$products[$key]->price}}</span></td>
			<td>
			<input type="number" data-id="key" min=0 max=100 value='{{$value}}' class="count" name='{{$key}}' />
			</td>
			<td><span id="price">{{$count}}</span></td>
			<td><a href="{{asset('basket/dell/'.$key)}}" data-id="{{$key}}">X</a></td>
		</tr>
		
		@endforeach
		<tr>
		   <th colspan="3">
		    Итого
		   </th>
		   <th>
		    {{$counts}}
		   </th>
		   <th>
		    {{$itog}}
		   </th>
		   <th>
		    <a href="{{asset('basket/clear/')}}">Очистить корзину</a>
		   </th>
		</tr>
		</table>
		<div align="right">
			<a href="{{asset('basket')}}" class="btn btn-lg btn-primary">Оформить заказ</a>
		</div>
		<div>
			<br><br><br>

			
			
  <div class="form-row" align="left">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
	  
	  @if($errors->has('email'))
		  <span class="help-block">
	  <strong> {{$errors->first('email')}}</strong>
	  </span>
	  @endif
	  
      <input type="email" name="email" class="form-control" id="inputEmail4" placeholder="Email" value="{{old('email')}}">
    </div>
    <div class="form-group col-md-6">
      
	  <label for="inputPassword4">Фамилия, Имя</label>
      
	  @if($errors->has('fio'))
		  <span class="help-block">
	  <strong> {{$errors->first('fio')}}</strong>
	  </span>
	  @endif
	  
	  <input name="fio" type="text" class="form-control" id="inputName" placeholder="Фамилия Имя" value="{{old('fio')}}" >
    </div><br>
     <div class="form-group col-md-6">
	 
    <label for="inputAddress2">Телефон</label>
    
	@if($errors->has('phone'))
		  <span class="help-block">
	  <strong> {{$errors->first('phone')}}</strong>
	   </span>
	  @endif
	  
	<input type="text" class="form-control" name="phone" id="inputPhone" placeholder="Номер телефона">
  </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
	

      <label for="inputCity">Населенный пункт</label>
	  
      	 @if($errors->has('town'))
		  <span class="help-block">
	  <strong> {{$errors->first('town')}}</strong>
		</span>
	  @endif
	  
	  <input type="text" name="town" class="form-control" id="inputCity">
    </div>
  <div class="form-group col-md-6">
    <label for="inputAddress">Адрес</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Улица, дом, корпус, квартира">
  </div>
 
  
    <div class="form-group col-md-4">
      <label for="inputState">Область</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputZip">Почтовый индекс</label>
      
	   @if($errors->has('postindex'))
		  <span class="help-block">
	  <strong> {{$errors->first('postindex')}}</strong>
			</span>
	  @endif
	  
	  <input type="text" name="postindex" class="form-control" id="Почтовый индекс">
    </div>
   
   
  </div>
 <div class="col-md-2">
	<button type="submit"  class="btn btn-primary">
		
		
		
		Подтвердить заказ
		 
	</button></div>
</form>

</div>


	</div>
  		
		
@endsection		