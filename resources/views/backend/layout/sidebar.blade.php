<div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="{{url('/admin')}}"><i class="menu-icon icon-dashboard"></i>Dashboard
                                </a></li>
                                <li><a href="{{route('quiz.create')}}"><i class="menu-icon icon-inbox"></i>Create Quiz</a></li>

                                
                                <li><a href="{{route('quiz.index')}}"><i class="menu-icon icon-inbox"></i>View Quiz<b class="label green pull-right">
                                11</b> </a></li>
                             </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                
                                <li><a href="{{route('question.create')}}"><i class="menu-icon icon-bullhorn"></i>Create Question</a>
                                </li>
                                <li><a href="{{route('question.index')}}"><i class="menu-icon icon-inbox"></i>View Question</a></li>
                            </ul>
                            <ul class="widget widget-menu unstyled">
                                
                                <li><a href="{{route('user.create')}}"><i class="menu-icon icon-bullhorn"></i>Create User</a>
                                </li>
                                <li><a href="{{route('user.index')}}"><i class="menu-icon icon-inbox"></i>View User</a></li>
                            </ul>
                            <ul class="widget widget-menu unstyled">
                                
                                <li><a href="{{route('user.exam')}}"><i class="menu-icon icon-bullhorn"></i>Assign Exam</a>
                                </li>
                                <li><a href="{{route('view.exam')}}"><i class="menu-icon icon-inbox"></i>View User Exam</a></li>
                            </ul>
                            
                            
                            <ul class="widget widget-menu unstyled">
                                
                                <li><a href="{{route('result.result')}}"><i class="menu-icon icon-paste"></i>Result</a></li>
                                
                            </ul>
                            <!--/.widget-nav-->
                            <ul class="widget widget-menu unstyled">
                                <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i class="menu-icon icon-cog">
                                </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                                </i>More Pages </a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li><a href=" "><i class="icon-inbox"></i>Login </a></li>
                                        <li><a href=" "><i class="icon-inbox"></i>Profile </a></li>
                                        <li><a href="{{route('user.index')}}"><i class="icon-inbox"></i>All Users </a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{route('logout')}}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                    </div>
                    <!--/.span3-->