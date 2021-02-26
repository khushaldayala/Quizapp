@extends('backend.layout.master')

@section('title','Create Quiz')


@section('content')

	<div class="span9">
		<div class="content">

			@if(Session::has('message'))
			<div class="alert alert-success">
			{{Session::get('message')}}</div>
			@endif

			<form action="{{route('quiz.update',[$quiz->id])}}" method="POST">@csrf
				{{method_field('PUT')}}
			<div class="module">
				<div class="module-name">
					<h3>Create quiz</h3>
				</div>
				<div class="module-body">
					<div class="control-group">
						<label class="control-lable">Quiz name</label>
						<div class="controls">
							<input type="text" name="name" class="span8" placeholder="Name of a quiz" value="{{$quiz->name}}">
						</div>
						@error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror

						<label class="control-lable">Description</label>
						<div class="controls">
							<textarea name="description" class="span8" placeholder="Description of a quiz">{{$quiz->description}}</textarea>
						</div>
						@error('description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror


						<label class="control-lable">Time (in minutes)</label>
						<div class="controls">
							<input type="text" name="minutes" class="span8" placeholder="Minutes of a quiz" value="{{$quiz->minutes}}">
						</div>
						@error('minutes')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror
                        
						<div class="controls">
							<button type="submit" class="btn btn-success"  name="submit">Submit</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		</div>
	</div>
@endsection
