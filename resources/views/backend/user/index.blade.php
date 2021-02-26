@extends('backend.layout.master')

@section('title','All User')


@section('content')

				<div class="span9">
					<div class="content">
						@if(Session::has('message'))
						<div class="alert alert-success">
						{{Session::get('message')}}</div>
						@endif
						<div class="module">
							<div class="module-head">
								<h3>All User</h3>
							</div>
							<div class="module-body">
								<table class="table">
								  <thead>
									<tr>
									  <th>#</th>
									  <th>Name</th>
									  <th>Email</th>
									  <th>Password</th>
									  <th>Occupation</th>
									  <th>Address</th>
									  <th>Phone</th>
									  <th>Action</th>
									</tr>
								  </thead>
								  <tbody>
								  	@if(count($users)>0)
								  	@foreach($users as $key=>$user)
									<tr>
									  <td>{{$key+1}}</td>
									  <td>{{$user->name}}</td>
									  <td>{{$user->email}}</td>
									  <td>{{$user->visible_password}}</td>
									  <td>{{$user->occupation}}</td>
									  <td>{{$user->address}}</td>
									  <td>{{$user->phone}}</td>
									  
									  <td>
									  	<a href="{{route('user.edit',[$user->id])}}">
									  		<button class="btn btn-primary">Edit</button>
									  	</a>
									  </td>
									  <td>
									  	<form id="delete-form{{$user->id}}" method="POST" action="{{route('user.destroy',[$user->id])}}">@csrf
									  	{{method_field('DELETE')}}
									  	</form>
									  	<a href="#" onclick="if(confirm('Do you want to delete?')){

									  		event.preventDefault();
									  		document.getElementById('delete-form{{$user->id}}').submit()
									  	}else{
									  		event.preventDefault();
									  	}
									  	">
									  		<input type="submit" value="delete"
									  		class="btn btn-danger">
									  	</a>


									  </td>
									</tr>
									@endforeach

									@else
									<td>No User Display</td>
									s
									@endif
									
								  </tbody>
								</table>
								<div class="pagination pagination-centered">
								
								</div>
							</div>
						</div>		
					</div>
				</div>

@endsection