@if(!empty($notFound))
<p>Sorry nothing found for your query!</p>
@else
@foreach($videos as $video)
	<article class="post">
		<header class="post-header">
			<h1 class="post-title">
				{{link_to_route('video.show',$video->videoName,$video->videoId)}}
			</h1>
			
		</header>
		<div class="post-content">
			<p>{{$video->videoDescription}}</p>
			<span>{{link_to_route('video.show','Detail',$video->videoId)}}
		</div>
		<footer class="post-footer">
			<hr>
		</footer>
	</article>
@endforeach
{{$videos->links()}}
@endif
