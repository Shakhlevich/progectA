<!DOCTYPE HTML>
<html lang="ru">
	<head>
	 <meta charset="utf-8">
	 <meta mame="description" content="1,2,3 предложения">
	 <meta name="keywords" content="выражения через ,">
	 <meta name="author" content="Shakhlevich">
	 <title>Learn-music</title>
	 <link type="text/css" rel="stylesheet" href={{asset('media/bootstrap/css/bootstrap.min.css')}}/>
	 <link type="text/css" rel="stylesheet" href={{asset('media/bootstrap/fonts/bootstrap.min.js')}}/>
	 <link type="text/css" rel="stylesheet" href={{asset('media/css/style.css')}} />
	 @section ('styles')
	 @show
	 @section ('scripts')
	 <script src="{{asset('js/app.js')}}"></script>
	 @show
	</head>
	<body>
	@include('templates.header')
	
	@include('templates.topmenu')
	
	
	 @guest
                           
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            
                            
                                @if (Route::has('register'))
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                @endif
                            
                        @else
                            
                                <a href="{{asset('home')}}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} 
                                </a>

                                
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                
                            
                        @endguest
	
	
	 <div>
	  <div class="col-md-2">
	   
	   <div id="saidbar">
		<a href={{asset('#')}} class="btn btn-default btn-block">Создание сайтов</a>
		<a href={{asset('#')}} class="btn btn-default btn-block">Заказ услуги</a>
		<a href={{asset('#')}} class="btn btn-default btn-block">Прайс</a>
	   
	   
	   @foreach($v_catalogs as $one)
	   <a href="{{asset('catalog/'.$one->id)}}" class="btn btn-primary btn-block">
		   {{$one->name}}
		   </a>
		
		   @endforeach
	   </div>
	  </div>
	  
	  <div class="col-md-8">
	  
		@yield('content')
      </div>
	
	  <div class="col-md-2">
	  <a href="{{asset('basket')}}" class="btn btn-lg btn-default">Корзина </a>

	<table width="100%" height="180" style="background-color:#f2f2f2; border: #cccccc 1px solid; font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="2" cellspacing="0">
	<tr><td><a href={{asset('http://6.pogoda.by/26041')}} style="font-family:Tahoma; font-size:12px; color:#003399;" title="Погода Копыль на 6 дней - Гидрометцентр РБ" target="_blank">Погода Копыль</a>
	</td></tr>
	<tr><td>

	<table width=100% height=100% style="background-color:#f2f2f2; font-family:Tahoma; font-size:12px; color:#000000;" cellpadding="0" cellspacing="0">
	<tr><td>
	<script type="text/javascript" charset="windows-1251" src={{asset('http://pogoda.by/meteoinformer/js/26041_3.js')}}></script>
	</td></tr>
	</table>

	</td></tr>

	<tr><td align="right">Информация сайта <a href={{asset('http://www.pogoda.by')}} target="_blank" style="font-family:Tahoma; font-size:12px; color:#003399;">pogoda.by</a>
	</td></tr>
	</table>
	  </div>
	
	</div>
	<br style="clear:both" />
	<div id="footer">
	2018 @copy:shakhlevich
	

	
	</body>
	
</html>