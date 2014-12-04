<div class="small-3 large-3 column">
    <aside class="sidebar">
        <h3>Menu</h3>
        <ul class="side-nav">
            <li>{{HTML::link('/','Home')}}</li>
            <li class="{{ (strpos(URL::current(),route('category.list'))!== false) ? 'active' : '' }}">
                {{HTML::linkRoute('category.list','List Category')}}
            </li>
            <li class="{{ (strpos(URL::current(),route('video.list'))!== false) ? 'active' : '' }}">
                {{HTML::linkRoute('video.list','List Videos')}}
            </li>
            <li class="divider"></li>
            <li class="{{ (strpos(URL::current(),route('comment.list'))!== false) ? 'active' : '' }}">
                {{HTML::linkRoute('comment.list','List Comments')}}
            </li>
            
            <li class="divider"></li>
            <li class="{{ (strpos(URL::current(),route('hashtag.list'))!== false) ? 'active' : '' }}">
                {{HTML::linkRoute('hashtag.list','List Hashtags')}}
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
        {{$content}}
    </div>
    <div id="comment-show" class="reveal-modal small" data-reveal>
        {{-- quick comment --}}
    </div>
</div>

