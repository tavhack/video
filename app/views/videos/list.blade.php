<h2 class="post-listings">Video listings</h2><hr>
<table>
    <thead>
    <tr>
        <th width="300">Video Name</th>
        <th width="120">Edit</th>
        <th width="120">Delete</th>
        <th width="120">View</th>
    </tr>
    </thead>
    <tbody>
        @foreach($videos as $video)
            <tr>
                <td>{{$video->videoName}}</td>
                <td>{{HTML::linkRoute('video.edit','Edit',$video->videoId)}}</td>
                <td>{{HTML::linkRoute('video.delete','Delete',$video->videoId)}}</td>
                <td>{{HTML::linkRoute('video.show','View',$video->videoId,['target'=>'_blank'])}}</td>
            </tr>
        @endforeach
    </tbody>
</table>
{{$videos->links()}}
