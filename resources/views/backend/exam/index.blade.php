@extends('backend.layout.master')

@section('title','Exam assigned user')


@section('content')

				<div class="span9">
					<div class="content">
						@if(Session::has('message'))
						<div class="alert alert-success">
						{{Session::get('message')}}</div>
						@endif
						<div class="module">
							<div class="module-head">
								<h3>User Exam</h3>
							</div>
							<div class="module-body">
								<table class="table">
								  <thead>
									<tr>
									  <th>#</th>
									  <th>Name</th>
									  <th>Quiz</th>
									</tr>
								  </thead>
								  <tbody>
								  	@if(count($quizzes)>0)
								  	@foreach($quizzes as $quiz)
								  	@foreach($quiz->users as $key=>$user)	
									<tr>
									  <td>{{$key+1}}</td>   
									  <td>{{$user->name}}</td>
									  <td>{{$quiz->name}}</td>
									  <td>
									  	<a href="{{route('quiz.question',[$quiz->id])}}">
									  		<button class="btn btn-inverse">View Questions</button>
									  	</a>
									  </td>
									  <td>
									  	<form action="{{route('remove.exam')}}" method="POST">@csrf
									  		<input type="text" name="user_id" value="{{$user->id}}">
									  		<input type="text" name="quiz_id" value="{{$quiz->id}}">
									  		<button class="btn btn-danger">Remove</button>
									  	</form>
									  </td>
									</tr>
									@endforeach
									@endforeach

									@else
									<td>No Quiz Display</td>
									
									@endif
									
								  </tbody>
								</table>
							</div>
						</div>		
					</div>
				</div>

@endsection