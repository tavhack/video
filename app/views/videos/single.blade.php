<article class="post">
    <header class="post-header">
        <h1 class="post-title">
            {{$video->videoName}}
        </h1>
        <div class="clearfix">
            <span class="left date">{{explode(' ',$video->created_at)[0]}}</span>
            <span class="right label">{{HTML::link('#reply','Reply',['style'=>'color:inherit'])}} </span>
        </div>
    </header>
    <div class="post-content">
        <p>{{ $video->videoDescription }}</p>
    </div>
    <footer class="post-footer">
        <hr>
    </footer>
</article>
<section class="comments">
    @if(!$comments->isEmpty())
        <h2>Comments on {{$video->videoName}}</h2>
        <ul>
            @foreach($comments as $comment)
                <li>
                    <article>
                        <header>
                            <div class="clearfix">
                                <span class="right date">{{explode(' ',$comment->created_at)[0]}}</span>
                                <span class="left commenter">{{link_to_route('video.show',$comment->commentAuthor,$video->videoId)}}</span>
                            </div>
                        </header>
                        <div class="comment-content">
                            <p>{{{$comment->comment}}}</p>
                        </div>
                        <footer>
                            <hr>
                        </footer>
                    </article>
                </li>
            @endforeach
        </ul>
    @else
        <h2>No Comments on {{$video->videoName}}</h2>
    @endif
  
</section>
