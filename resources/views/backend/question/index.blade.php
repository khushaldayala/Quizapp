@extends('backend.layout.master')

@section('title','All Question')


@section('content')

				<div class="span9">
					<div class="content">
						@if(Session::has('message'))
						<div class="alert alert-success">
						{{Session::get('message')}}</div>
						@endif
						<div class="module">
							<div class="module-head">
								<h3>All Question</h3>
							</div>
							<div class="module-body">
								<table class="table">
								  <thead>
									<tr>
									  <th>#</th>
									  <th>Questions</th>
									  <th>Quiz</th>
									  <th>Created</th>
									  <th>Action</th>
									</tr>
								  </thead>
								  <tbody>
								  	@if(count($questions)>0)
								  	@foreach($questions as $key=>$question)
									<tr>
									  <td>{{$key+1}}</td>
									  <td>{{$question->question}}</td>
									  <td>{{$question->quiz->name}}</td>
									  <td>{{date('F d,Y',strtotime($question->created_at))}}</td>
									  <td>
									  	<a href="{{route('question.show',[$question->id])}}">
									  		<button class="btn btn-primary">View</button>
									  	</a>
									  </td>
									  <td>
									  	<a href="{{route('question.edit',[$question->id])}}">
									  		<button class="btn btn-primary">Edit</button>
									  	</a>
									  </td>
									  <td>
									  	<form id="delete-form{{$question->id}}" method="POST" action="{{route('question.destroy',[$question->id])}}">@csrf
									  	{{method_field('DELETE')}}
									  	</form>
									  	<a href="#" onclick="if(confirm('Do you want to delete?')){

									  		event.preventDefault();
									  		document.getElementById('delete-form{{$question->id}}').submit()
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
									<td>No Question Display</td>
									s
									@endif
									
								  </tbody>
								</table>
								<div class="pagination pagination-centered">
								{{$questions->links()}}
								</div>
							</div>
						</div>		
					</div>
				</div>

@endsection