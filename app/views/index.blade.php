
@if(!empty($notFound))
<p>Sorry nothing found for your query!</p>
@else
<div class="grid" >
@foreach($arrVideos as $video)
<?php
?>

<div class="item">
    <div class="shadow">
        <div class="iv-post">
            <ul class="iv-post-share">
                
                 <li><a target="_blank" onclick="updateShareVideo({{$video['videoId']}})" target="_blank" href="https://www.facebook.com/sharer/sharer.php?s=100&p[url]=<?php echo action('VideosController@showVideo', array($video['videoId']))?>&p[images][0]=<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $video['videoThumbnail'])?>"><span class="icon-facebook"></span></a></li>
                <li><a target="_blank" onclick="updateShareVideo({{$video['videoId']}})" href="<?php echo Share::load(action('VideosController@showVideo', array($video['videoId'])), 'Title:Instavid Video, Description: ' . $video['videoDescription'] . '')->twitter() ?>"><span class="icon-twitter"></span></a></li>
                <li ><a href="mailto:?subject=Instavid&amp;body={{ action('VideosController@showVideo', array($video['videoId']))}}"><span class="icon-mail"></span></a></li>
            </ul>
            <span class="iv-post-image" style="background-image:url(<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $video['videoThumbnail']) ?>)"></span>


            <a onclick="return updateViewVideo({{$video['videoId']}})" href="#detail_{{$video['videoId']}}" data-video-id="{{$video['videoLink']}}" data-link="{{ action('VideosController@showVideo', array($video['videoId']))}}" data-fancybox-group="button" class="fancybox"> </a>

            <!-- Popup --> 
            <div id="detail_{{$video['videoId']}}" class="detail-page popup">
                <div class="video">
                    
                </div>
                <div class="details content-list-scroll">
                    <div class="description">
                        <?php echo $video['videoDescription'] ?>
                    </div>
                    <p class="total-comments"><?php echo $video['videoCommentCount'] ?> comments </p>
                    <div class="iv-comments">
                        <ul class="iv-comment-list">
                            <?php
                            foreach ($video['comments'] as $comment):
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
                    </div>
                </div>
                <ul class="share">
                    <li><a onclick="updateShareVideo({{$video['videoId']}})" target="_blank" href="https://www.facebook.com/sharer/sharer.php?s=100&p[url]=<?php echo action('VideosController@showVideo', array($video['videoId']))?>&p[images][0]=<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $video['videoThumbnail'])?>"><span class="icon-facebook"></span></a></li>
                    <!--<li><a target="_blank" onclick="updateShareVideo({{$video['videoId']}})" href="<?php echo Share::load(action('VideosController@showVideo', array($video['videoId'])), 'Title:Instavid Video, Description: ' . $video['videoDescription'] . '')->facebook() ?>"><span class="icon-facebook"></span></a></li>-->
                    <li><a target="_blank" onclick="updateShareVideo({{$video['videoId']}})" href="<?php echo Share::load(action('VideosController@showVideo', array($video['videoId'])), 'Title:Instavid Video, Description: ' . $video['videoDescription'] . '')->twitter() ?>"><span class="icon-twitter"></span></a></li>
                    <li><a href="mailto:?subject=Instavid&amp;body={{ action('VideosController@showVideo', array($video['videoId']))}}"><span class="icon-mail"></span></a></li>
                </ul>
            </div> <!-- end Popup --> 

            <div class="iv-post-meta" id="updateView_{{$video['videoId']}}">
                <div class="iv-post-meta-inner">
                    <ul>
                        <li >
                            <span class="icon-eye22"></span>
                            <span id="updateView"><?php echo $video['videoViews'] ?></span>
                        </li>
                        <li >
                            <span class="icon-bubble"></span>
                            <span><?php echo $video['videoCommentCount'] ?></span>
                        </li>
                        <li >
                            <span class="icon-share"></span>
                            <span id="updateShare"><?php echo $video['videoShares'] ?></span>
                        </li>
                    </ul>
                </div>
            </div> <!-- end iv-post-metas --> 
        </div> <!-- end iv-post --> 

        <div class="iv-comments">
            <ul class="iv-comment-list">
                <?php
                $stt = 0;
                foreach ($video['comments'] as $comment):
                    ?>
                <?php if ($stt < 3): ?>
                    <li> 
                            <div class="iv-comment-avatar pull-left">
                                <span class="circular"><img alt="" src="<?php echo str_replace('http://webdemo.synova.com.vn:5656', 'https://projects.synova-solutions.com', $comment['commentAvatar']) ?>"></span>
                            </div>

                            <div class="iv-comment-text pull-left">
                                <?php echo $comment['commentText'] ?>
                                <p class="iv-comment-time"><?php echo $comment['timeElapsed'] ?></p>
                            </div>
                        
                    </li>
                <?php endif ?>
                    <?php $stt++;
                endforeach;
                ?>
            </ul>
        </div><!-- end iv-comments --> 
        <?php
        $total = $video['videoCommentCount'];
        $ct = $total - 3;
        if ($ct > 0) {
            ?>
            <div class="read-more text-center">
                <a href="#" class="fancybox2"><?php echo $ct ?> more comments</a>
            </div>
<?php } ?>
    </div>
</div> <!-- end item --> 
@endforeach
</div>
{{--$arrVideos->links()--}}
@endif
