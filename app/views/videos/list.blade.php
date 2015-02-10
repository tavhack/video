
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">

        <title>Backend management</title>

        {{ HTML::style('assets/css/foundation.css') }}
        {{ HTML::style('assets/css/custom.css') }}
        {{ HTML::script('./assets/js/vendor/custom.modernizr.js') }}
    </head>
    <body>
        <div class="row main">
            <div class="small-12 large-12 column" id="masthead">
                <header>
                    <nav class="top-bar" data-topbar>
                        <ul class="title-area">
                            <!-- Title Area -->
                            <li class="name"></li>
                            <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
                            <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
                        </ul>
                        <section class="top-bar-section">
                    <ul class="left">
                        <li class="{{(strcmp(URL::full(), URL::to('/')) == 0) ? 'active' : ''}}"><a href="{{URL::to('/')}}">Site web</a></li>
                    </ul>
                    <ul class="right">
                        @if(Auth::check())
                            <li class="{{ (strpos(URL::current(), URL::to('admin/video/list'))!== false) ? 'active' : '' }}">
                                 {{HTML::link('/admin/video/list','Dashboard')}}
                            </li>
                            <li class="{{ (strpos(URL::current(), URL::to('logout'))!== false) ? 'active' : '' }}" >
                                {{HTML::link('logout','Se déconnecter')}}
                            </li>
                        @else
                            <li class="{{ (strpos(URL::current(), URL::to('login'))!== false) ? 'active' : '' }}">
                                {{HTML::link('login','Se connecter')}}
                            </li>
                        @endif
                    </ul>
                </section>
                    </nav>
                    <div class="sub-header">
                        <div style="float: right; color: #fff;"><p style="font-size: 0.8125rem;"><?php $username = Auth::user()->username;
echo $content = "Connecté en tant que $username";
?></p></div>
                       <hgroup>
                       <h1><a href="{{URL('/admin/video/list')}}"><img alt="Instavid" src="{{URL('images/logo.png')}}"/></a></h1>
                            <h2>Back-office</h2>
                        </hgroup>

                    </div>
                </header>
            </div>
            <div class="small-3 large-3 column">
                <aside class="sidebar">
                    <h3>Menu</h3>
                    <ul class="side-nav">


                        <li class="{{ (strpos(URL::current(),route('video.list'))!== false) ? 'active' : '' }}">
                            {{HTML::linkRoute('video.list','Liste des videos')}}
                        </li>


                    </ul>
                </aside>
            </div>
            <div class="small-9 large-9 column">
                <div class="content">
                    <h2 class="post-listings">Liste des video</h2><hr>
                     @if(Session::has('success'))
                    <div data-alert class="alert-box round">
                        {{Session::get('success')}}
                        <a href="#" class="close">&times;</a>
                    </div>
                    @endif
                    <table id="video">
                        <thead>
                            <tr><th>Date</th>
                                 <th style="white-space: nowrap">Video</th>
                                <th>Auteur</th>
                                <th>Description</th>
                                <th>Catégorie</th>
                                <th style="white-space: nowrap">Approuvé ?</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($videos as $video)
                            <tr>
                                 
                                 <td style="white-space: nowrap;">{{ date("d/m H:i", strtotime($video->created_at))}}</td>
                                   <td>
                                     <a target="_blank" href="http://player.vimeo.com/video/{{$video->videoLink}}">{{$video->videoLink}} </a>   
                                     
                                     </td>
                                 <td>{{$video->videoAuthor}}</td>
                                  <td>{{$video->videoDescription}}</td>
                                   <td><?php
                                        $objectCategory  =  new Category();
                                        echo $catName = $objectCategory->getCategoryNameById($video->videoCategoryId);
                                   ?></td>
                                <td>
                                    {{Form::open(['route'=>['video.update',$video->videoId]])}}
                                    {{Form::select('status',['yes'=>'Oui','no'=>'Non'],$video->approved,['style'=>'margin-bottom:0','onchange'=>'submit()'])}}
                                    {{Form::close()}}
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{$videos->links()}}

                </div>
                <div id="comment-show" class="reveal-modal small" data-reveal>
                    {{-- quick comment --}}
                </div>
            </div>

            <div class="row">
                <div class="small-12 large-12 column">
                    <div class="container text-center">

                    </div>
                </div>
            </div>
        </div>
        {{ HTML::script('./assets/js/vendor/jquery.js') }}
        {{ HTML::script('./assets/js/foundation.min.js') }}
        <script>
            $(document).foundation();
        </script>
    </body>
</html>




