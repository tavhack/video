<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">

        <title>Instavid Back-office</title>

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
                                <li class="{{ (strpos(URL::current(), URL::to('/admin/video/list'))!== false) ? 'active' : '' }}">
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
                    @if(Session::has('success'))
                    <div data-alert class="alert-box round">
                        {{Session::get('success')}}
                        <a href="#" class="close">&times;</a>
                    </div>
                    @endif

                </div>
                <div id="comment-show" class="reveal-modal small" data-reveal>
                    {{-- quick comment --}}
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

