@extends('backend.layout.master')

	@section('title','Update User')


@section('content')

	<div class="span9">
		<div class="content">

			@if(Session::has('message'))
			<div class="alert alert-success">{{Session::get('message')}}</div>
			@endif

			<form action="{{route('user.update',[$user->id])}}" method="POST">@csrf
			{{method_field('PUT')}}
			<div class="module">
				<div class="module-name">
					<h3>Update User</h3>
				</div>
				<div class="module-body">
					
					<div class="control-group">
						<label class="control-lable">Full name</label>
						<div class="controls">
							<input type="text" name="name" class="span8"  value="{{$user->name}}">
						</div>
						@error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror

                        <label class="control-lable">Password</label>
						<div class="controls">
							<input type="text" name="password" class="span8"  value="{{$user->visible_password}}">
						</div>
						@error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror

						<label class="control-lable">Occupation</label>
						<div class="controls">
							<input type="text" name="occupation" class="span8"  value="{{$user->occupation}}">
						</div>
						@error('occupation')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror

                        <label class="control-lable">Address</label>
						<div class="controls">
							<input type="text" name="address" class="span8"  value="{{$user->address}}">
						</div>
						@error('address')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror

                        <label class="control-lable">Phone</label>
						<div class="controls">
							<input type="text" name="phone" class="span8"  value="{{$user->phone}}">
						</div>
						@error('phone')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror
                        
						<div class="controls">
							<button type="submit" class="btn btn-success"  name="submit">Update</button>
						</div>
					</div>
						
				</div>
			</div>
		</form>
		</div>
	</div>
@endsection
