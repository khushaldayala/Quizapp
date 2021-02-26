@extends('backend.layout.master')

	@section('title','Assign Exam')


@section('content')

	<div class="span9">
		<div class="content">

			@if(Session::has('message'))
			<div class="alert alert-success">{{Session::get('message')}}</div>
			@endif

			<form action="{{route('assign.exam')}}" method="POST">@csrf
			
			<div class="module">
				<div class="module-name">
					<h3>Assign Quiz</h3>
				</div>

				<div class="module-body">
					<div class="control-group">
						<label class="control-lable" for="name">Choose Quiz</label>
						<div class="controls">
							<select name="quiz_id" class="span8">
								<option value="select quiz">Select Quiz</option>
								@foreach(App\Quiz::all() as $quiz)
								<option value="{{$quiz->id}}">{{$quiz->name}}</option>
								@endforeach
							</select>
						</div>
						@error('quiz')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror
					</div>

					<div class="control-group">
						<label class="control-lable" for="name">Choose User</label>
						<div class="controls">
							<select name="user_id" class="span8">
								<option value="select quiz">Select User</option>
								@foreach(App\User::where('is_admin','0')->get() as $user)
								<option value="{{$user->id}}">{{$user->name}}</option>
								@endforeach
							</select>
						</div>
						@error('quiz')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror
					</div>

					<div class="controls">
						<button type="submit" class="btn btn-success"  name="submit">Submit</button>
					</div>
					
				</div>
			</div>
		</form>
		</div>
	</div>
@endsection
