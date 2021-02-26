@extends('backend.layout.master')

	@section('title','Create Question')


@section('content')

	<div class="span9">
		<div class="content">

			@if(Session::has('message'))
			<div class="alert alert-success">{{Session::get('message')}}</div>
			@endif

			<form action="{{route('question.store')}}" method="POST">@csrf
			
			<div class="module">
				<div class="module-name">
					<h3>Create Question</h3>
				</div>

				<div class="module-body">
					<div class="control-group">
						<label class="control-lable" for="name">Choose Quiz</label>
						<div class="controls">
							<select name="quiz" class="span8">
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
						<label class="control-lable">Question name</label>
						<div class="controls">
							<input type="text" name="question" class="span8" placeholder="Name of a question" value="{{old('name')}}">
						</div>
						@error('question')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                        @enderror
					</div>

					<div class="control-group">
						<label class="control-lable">Options</label>
						<div class="controls">
							@for($i=0;$i<4;$i++)
							<input type="text" name="options[]" class="span7" placeholder="options{{$i+1}}" required="" value="{{old('options.[$i]')}}">

							<input type="radio" name="correct_answer" value="{{$i}}"><span> Is correct answer</span>
							@endfor
						</div>
						@error('question')
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
