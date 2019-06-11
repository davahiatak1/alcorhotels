
@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg'); min-height: 580px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">BLOG </span>
              <h2 class="heading">Toute l'actualité sur le<b> GROUPE ALCOR</b></h2>
        </div>
      </div>
    </div>
  </div>


  <div id="blog" class="site-section">
    <div class="container">

      <div class="row">

        <div class="col-md-8">
          <h2 class="mb-3">{{$post->titre}}</h2>
          <p><img src="{{Voyager::image($post->thumbnail('cropped', 'image'))}}" alt="" class="img-fluid"></p>
          {!! $post->texte !!}
        </div>

        <div class="col-md-4 sidebar">

          <div class="sidebar-box">
            <div class="categories">
              <h3>Articles</h3>
              @foreach($posts as $r)
              <li><a href="{{route('blog.show',$r)}}">{{$r->titre}} </a></li>
              @endforeach
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>

@endsection
