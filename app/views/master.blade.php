<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        @section('title')
        <title>{{$title}}</title> 
        @show
        <meta property="og:title" content="{{$title}}"/> 
        <meta property="og:url" content="{{URL::to('/')}}"/>
        <meta property="og:description" content="<?php echo 'Share with friends, anonymously.' ?>"/>
        <meta property="og:image" content="{{URL('images/logo.png')}}"/>
        <meta name="description" content="<?php echo 'Share with friends, anonymously.' ?>">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
        {{ HTML::style('./assets/js/plugins/fancybox/jquery.fancybox.css?v=2.1.5.css') }}
        {{ HTML::style('./assets/js/plugins/fancybox/helpers/jquery.fancybox-buttons.css?v=1.0.5.css') }}
        {{ HTML::style('./assets/js/plugins/custom-scrollbar/jquery.mCustomScrollbar.css') }}
        {{ HTML::style('./assets/css/bootstrap.css') }}
        {{ HTML::style('./assets/css/icomoon.css') }}
        {{ HTML::style('./assets/css/main.css') }}
        {{ HTML::script('./assets/js/modernizr-2.6.2.min.js') }}
    </head>
    <body>
        <!-- Header --> 
        <header class="navbar-fixed-top">
            <div class="panel-top">
                <div class="container">
                    <h1 class="logo pull-left"><a href="{{URL::to('/')}}"><img alt="Instavid" src="{{URL('images/logo.png')}}"/></a></h1>

                    {{ Form::open(['url' => 'search','method'=>'get','class'=>'pull-left frm-search']) }}
                    <div class="search-group">

                        {{ Form::text('s',Input::old('username'),['placeholder'=>'Search', 'class'=>'form-control pull-left']) }}

                        {{ Form::submit('&nbsp;',['class'=>'btn btn-search']) }}
                    </div>
                    {{ Form::close() }}


                    <div class="app-link pull-right visible-xs">
                        <a href="#"> <img src="{{URL('images/icon-ios.png')}}"  alt=""/> </a>
                        <a href="#"> <img src="{{URL('images/icon-android.png')}}"  alt=""/> </a>
                    </div>
                    <div class="app-link pull-right hidden-xs">
                        <a href="#"> <img src="{{URL('images/btn-ios.png')}}"  alt=""/> </a>
                        <a href="#"> <img src="{{URL('images/btn-android.png')}}"  alt=""/> </a>
                    </div>
                </div>
            </div>

            <nav class="navbar navbar-default main-nav" role="navigation">
                <div class="container">
                    <ul class="nav navbar-nav responsive-nav">
                        @foreach($categories as $cat)
                        <li class="{{ (strpos(URL::current(), route('video.category.list',$cat->categoryId))!== false) ? 'active' : '' }}">
                            {{link_to_route('video.category.list',$cat->categoryName,$cat->categoryId)}}
                        </li>
                        @endforeach

                        <li class="cate-more" style="display: none;"><a href="javascript:;">More</a>
                            <ul class="collection-cate-more clearfix" style="display: none;"></ul>
                        </li>
                    </ul>
                </div>
            </nav>

        </header>
        <!-- end Header -->

        <!-- Main content --> 
            {{$main}}

        <!-- end Main content --> 
        <footer>
            <div class="container text-center">
                Popular secrets from across the world that our community has loved
                <ul class="share">
                    <li><a target="_blank" href="<?php echo Share::load(URL::to('/'),'Instavid')->facebook() ?>"><span class="icon-facebook"></span></a></li>
                    <li><a target="_blank" href="<?php echo Share::load(URL::to('/'),'Instavid')->twitter() ?>"><span class="icon-twitter"></span></a></li>
                    <li><a href="mailto:?subject=Instavid&amp;body={{URL::to('/')}}"><span class="icon-mail"></span></a></li>
                </ul>
            </div>
        </footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>
        {{ HTML::script('./assets/js/plugins/fancybox/jquery.fancybox.js?v=2.1.5') }}
        {{ HTML::script('./assets/js/plugins/fancybox/helpers/jquery.fancybox-buttons.js?v=1.0.5') }}
        {{ HTML::script('./assets/js/plugins/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js') }}
        {{ HTML::script('./assets/js/plugins/masonry.pkgd.min.js') }}

        <script type="text/javascript">
            var container = document.querySelector('.grid');
            var msnry = new Masonry( container, {
                itemSelector: '.item'
            });
            
            $(document).ready(function() {
                $(".fancybox").fancybox({
                    autoResize: false,
                    fitToView : false,
                    width: 850,
                    padding: 0,
                    prevEffect	: 'none',
                    nextEffect:  'none',
                    afterLoad: function(){
                        $('html').addClass('fix-device-scroll');
                    },
                    afterClose: function(){
                        $('html').removeClass('fix-device-scroll');
                    }
                });
                
                // Go to detail page on Mobile
                $(".fancybox").click(function(e){
                    if( $(window).width() < 768) {
                        var link = $(".fancybox").attr('data-link');
                        window.location.replace(link);
                    }
                    else {
                        var id = $(this).attr('data-video-id');
                        var iframe = '<iframe src="//player.vimeo.com/video/' + id + '?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1" width="100%" height="530" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
                        $(this).closest('.iv-post').find('.popup .video').html(iframe);
                    }
                    
                });
                
                
                $(".fancybox2").click(function(){
                    $(this).closest('.item').find(".fancybox").trigger( "click" );
                });
                
                // Custom responsive menu
                function responsiveMenu() {
                    var w = $(".responsive-nav").width();
                    var total = 0;
                    var curWidth=0;
                    $(".responsive-nav .collection-cate-more").html(' ');
                    $(".responsive-nav .cate-more, .responsive-nav .collection-cate-more").hide();

                    $(".responsive-nav li:not(.cate-more)").each(function(){
                        curWidth += $(this).width() + total;
                        
                        // Add li to button "More" if  current width > nav width
                        if((curWidth + $(".responsive-nav li.cate-more").width()) > w) 
                        {
                            $(this).hide();
                            $(".responsive-nav .cate-more").show();
                            $(".responsive-nav .collection-cate-more").append("<li>" + $(this).html() + "</li>");
                        }
                        else {
                            $(this).show();
                        }
                    });
                }
                
                // Toggle more menu
                $(".responsive-nav .cate-more a").click(function(){
                    $(".responsive-nav .collection-cate-more").toggle();
                });
                
                responsiveMenu();
                $(window).resize(function(){
                    responsiveMenu();
                });
                
                // Cusrom  scrollbar
                $(".content-list-scroll").mCustomScrollbar({
                    scrollButtons:{
                        enable:true
                    },
                    theme:"dark",
                    scrollInertia: 300,
                    
                    // Fix scrollbar hidden when resize browser
                    advanced:{  
                        updateOnBrowserResize:true,   
                        updateOnContentResize:true   
                    } // removed extra commas  
                });
                $(".popup").hide();
                
            });
            
        </script>
        <script>

            function updateViewVideo(videoId){
                var l = window.location;
                var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1]+"/"+l.pathname.split('/')[2];
                $.ajax({
                    url: base_url+'/video/ajaxupdate/'+videoId,
                    type: 'GET',
                    data: {},
                    success: function(data){
                        $('#updateView_'+videoId+' #updateView').text(data);
                    }
                });

                return false;
            }
            function updateShareVideo(videoId){
                var l = window.location;
                var base_url = l.protocol + "//" + l.host + "/" + l.pathname.split('/')[1]+"/"+l.pathname.split('/')[2];
                $.ajax({
                    url: base_url+'/video/ajaxUpdateShare/'+videoId,
                    type: 'GET',
                    data: {},
                    success: function(data){
                        $('#updateView_'+videoId+' #updateShare').text(data);
                    }
                });

                return false;
            }
            //    $(document).ready(updateViewVideo(videoId));

        </script>
    </body>
</html>