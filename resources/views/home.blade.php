@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        
        <div class="col-md-8">
            @if(Session::has('error'))
            <div class="alert alert-danger">{{Session::get('error')}}</div>
            @endif
            <div class="card">
                
                <div class="card-header">{{ __('Exam') }}</div>
                @if($isExamAssigned)
                @foreach($quizzes as $quiz)
                <div class="card-body">
                    <p><h3>{{$quiz->name}}</h3></p>
                    <p>About Exam : {{$quiz->description}}</p>
                    <p>Time allocated : {{$quiz->minutes}} Minutes </p>
                    <p>Number of Questions : {{$quiz->questions->count()}}</p>
                    <p>
                        @if(!in_array($quiz->id,$wasQuizComplated))
                        <a href="user/quiz/{{$quiz->id}}">
                            <button class="btn btn-success">Start Quiz</button>
                        </a>
                        @else
                        <a href="result/user/{{auth()->user()->id}}/quiz/{{$quiz->id}}>">
                            <button class="btn btn-success">View Result</button>
                        </a>
                        <span class="float-right">Your Quiz Complated</span>
                        @endif
                    </p>
                </div>
                @endforeach
                @else
                    <p>You have not assign any exam</p>
                @endif
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">User Profile</div>
                <div class="card-body">
                    <center><p><b>Welcome {{auth()->user()->name}}</b></p>
                    <p>Email : {{auth()->user()->email}}</p>
                    <p>Occupation : {{auth()->user()->occupation}}</p>
                    <p>Address : {{auth()->user()->address}}</p>
                    <p>Phone : {{auth()->user()->phone}}</p></center>
                </div>
            </div>
        </div>
        
    </div>
</div>
@endsection


