<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        @section('title')
        <title>{{$title}}</title> 
        @show
        <meta property="og:title" content="{{$title}}"/> 
        <meta property="og:url" content="<?php echo action('VideosController@showVideo', array($arrVideo['videoId'])) ?>"/>
        <meta property="og:description" content="<?php echo $arrVideo['videoDescription'] ?>"/>
        <meta property="og:image" content="<?php 
                $url = $arrVideo['videoThumbnail'];
              echo  str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $url); 
//                echo URL($arrVideo['videoThumbnail']) ?>"/>
        <meta name="description" content="">
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

        </header>
        <!-- end Header -->
        <!-- Main content --> 
        <div class="container fancybox-opened page" id="main-content">
            <div class="detail-page">

                <div class="video">
                    <iframe src="//player.vimeo.com/video/<?php echo $arrVideo['videoLink'] ?>?title=0&amp;byline=0&amp;portrait=0&amp;autoplay=1" width="100%" height="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                </div>
                <div class="details content-list-scroll">
                    <div class="description">
                        <?php echo $arrVideo['videoDescription'] ?>
                    </div>
                    <p class="total-comments"> <?php echo $arrVideo['videoCommentCount'] ?> comments</p>
                    <div class="iv-comments">
                        <ul class="iv-comment-list">
                            <ul class="iv-comment-list">
                                <?php
                                foreach ($arrVideo['comments'] as $comment):
                                    ?>
                                    <li>
                                        <div class="iv-comment-avatar pull-left">
                                            <span class="circular"><img alt="" src="<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $comment['commentAvatar']) ?>"></span>
                                        </div>
                                        <div class="iv-comment-text pull-left">
                                            <?php echo $comment['commentText'] ?>
                                            <p class="iv-comment-time"><?php echo $comment['timeElapsed'] ?></p>
                                        </div>
                                    </li>

                                <?php endforeach; ?>
                            </ul>
                        </ul>
                    </div>
                </div>
                <ul class="share">
                    <li><a onclick="updateShareVideo({{$arrVideo['videoId']}})" target="_blank" href="https://www.facebook.com/sharer/sharer.php?s=100&p[url]=<?php echo action('VideosController@showVideo', array($arrVideo['videoId'])) ?>&p[images][0]=<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $arrVideo['videoThumbnail']) ?>"><span class="icon-facebook"></span></a></li>
                    <!--<li><a onclick="updateShareVideo($arrVideo['videoId']}})" target="_blank" href="<?php echo Share::load(action('VideosController@showVideo', array($arrVideo['videoId'])), 'Title:Instavid Video, Description: "' . $arrVideo['videoDescription'] . '"')->facebook() ?>"><span class="icon-facebook"></span></a></li>-->
                    <li><a onclick="updateShareVideo({{$arrVideo['videoId']}})" target="_blank" href="<?php echo Share::load(action('VideosController@showVideo', array($arrVideo['videoId'])), 'Title:Instavid Video, Description: ' . $arrVideo['videoDescription'] . '')->twitter() ?>"><span class="icon-twitter"></span></a></li>
                    <li><a href="mailto:?subject=Instavid&amp;body={{ action('VideosController@showVideo', array($arrVideo['videoId']))}}"><span class="icon-mail"></span></a></li>
                </ul>

            </div>
        </div> <!-- end Main content --> 
        <footer>
            <div class="container text-center">
                Popular secrets from across the world that our community has loved
                <ul class="share">
                    <li><a target="_blank" href="<?php echo Share::load(URL::to('/'), 'Instavid')->facebook() ?>"><span class="icon-facebook"></span></a></li>
                    <li><a target="_blank" href="<?php echo Share::load(URL::to('/'), 'Instavid')->twitter() ?>"><span class="icon-twitter"></span></a></li>
                    <li><a href="mailto:?subject=Instavid&amp;body={{URL::to('/')}}"><span class="icon-mail"></span></a></li>
                </ul>
            </div>
        </footer>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/jquery-1.11.1.min.js"><\/script>')</script>
        {{ HTML::script('./assets/js/plugins/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js') }}

        <script type="text/javascript">
            $(document).ready(function() {
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