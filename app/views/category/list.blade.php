<h2 class="post-listings">Catgories listings</h2><hr>
<table>
    <thead>
    <tr>
        <th width="300">Category Name</th>
        <th width="120">Edit</th>
        <th width="120">Delete</th>
        <th width="120">View</th>
    </tr>
    </thead>
    <tbody>
        @foreach($listCategories as $cat)
            <tr>
                <td>{{$cat->categoryName}}</td>
                <td>{{HTML::linkRoute('category.update','Edit',$cat->categoryId)}}</td>
                <td>{{HTML::linkRoute('category.delete','Delete',$cat->categoryId)}}</td>
                <td>{{HTML::linkRoute('category.show','View',$cat->categoryId,['target'=>'_blank'])}}</td>
            </tr>
        @endforeach
    </tbody>
</table>
{{$listCategories->links()}}
