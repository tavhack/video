<h2 class="comment-listings">Comment listings</h2><hr>
<table>
    <thead>
    <tr>
        <th>Comment Author</th>
        <th>Comment Avatar</th>
        <th>Comment videoId</th>
        <th>Approved</th>
        <th>Comment Delete</th>
        <th>Comment View</th>
    </tr>
    </thead>
    <tbody>
    @foreach($comments as $comment)
    <tr>
        <td>{{{$comment->commentAuthor}}}</td>
        <td>{{{$comment->commentAvatar}}}</td>
        <td>{{$comment->commentVideoId}}</td>
        <td>
            {{Form::open(['route'=>['comment.update',$comment->commentId]])}}
            {{Form::select('status',['yes'=>'Yes','no'=>'No'],$comment->approved,['style'=>'margin-bottom:0','onchange'=>'submit()'])}}
            {{Form::close()}}
        </td>
        <td>{{HTML::linkRoute('comment.delete','Delete',$comment->commentId)}}</td>
        <td>{{HTML::linkRoute('comment.show','Quick View',$comment->commentId,['data-reveal-id'=>'comment-show','data-reveal-ajax'=>'true'])}}</td>
    </tr>
    @endforeach
    </tbody>
</table>
{{$comments->links()}}
