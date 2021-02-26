<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Result;
use App\Quiz;
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(auth()->user()->is_admin==1){
            return redirect('admin');
        }
        $authUser = auth()->user()->id;
        $assignedQuizId = [];
        $user = DB::table('quiz_user')->where('user_id',$authUser)->get();
        foreach($user as $u){
            array_push($assignedQuizId,$u->quiz_id);
        }
        $quizzes = Quiz::whereIn('id',$assignedQuizId)->get();

        $isExamAssigned = DB::table('quiz_user')->where('user_id',$authUser)->exists();

        $wasQuizComplated = Result::where('user_id',$authUser)->whereIn('quiz_id',(new Quiz)->hasQuizAttempted())->pluck('quiz_id')->toArray(); 

        return view('home',compact('quizzes','wasQuizComplated','isExamAssigned'));
    }
}
