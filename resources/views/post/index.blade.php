@extends('layouts.app')

@section('content')
    <div class="container mt-4">
        @include('inc.message')
        <h1>Posts</h1>
        <a class="float-right btn btn-sm btn-primary mb-4" href="{{ route('posts.create') }}">Create Post</a>
        <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Title</th>
                <th scope="col">Description</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($posts as $post)
                    <tr>
                        <th scope="row">{{ $post->id}}</th>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->description }}</td>
                        <td>
                            <a class="btn-sm btn-secondary" style="text-decoration: none;" href="{{ route('posts.edit', ['post'=> $post->id]) }}">Edit</a>
                            <form action="{{ route('posts.destroy', ['post' => $post->id])}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button class="btn-sm btn-danger" type="submit">Delete</button>
                            </form>
                        </td>
                    </td>
                    </tr>
                @endforeach
            </tbody>
          </table>
          {{ $posts->links() }}
    </div>
@endsection