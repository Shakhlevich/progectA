@extends('admin.layouts.master')

@section('content')

    <div class="portlet box green">
        <div class="portlet-title">
            <div class="caption">{{ trans('quickadmin::templates.templates-customView_index-list') }}</div>
        </div>
        <div class="portlet-body">
		<table width="700" class="table table-bordered table-striped">
           @foreach($all as $one)
		   <tr>
		   <td>
		   {{$one->name}}
		   </td>
		   <td>
		    {{$one->email}}
		   </td>
		   <td>
		    {{$one->phone}}
		   </td>
		   <td>
		    {{$one->town}}
		   </td>
		   <td>
		    {{$one->adress}}
		   </td>
		   <td>
		    {{$one->obl}}
		   </td>
		   <td>
		    {{$one->postindex}}
		   </td>
		   <td>
		    {{$one->user_id}}
		   </td>
		   <td>
		   <a href="{{asset('admin/order/one' .$one->id)}}">Заказ</a>
		   </td>
		</tr>
		   @endforeach
		   </table>
		  
        </div>
		
	</div>

@endsection