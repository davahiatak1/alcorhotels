
@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('{{asset('images/bg_2.jpg')}}'); min-height: 580px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">BLOG </span>
              <h2 class="heading">Toute l'actualité sur le<b> GROUPE ALCOR</b></h2>
        </div>
      </div>
    </div>
  </div>


 <div class=" site-section bg-light" id="blog">

    <div class="container">
      <div class="row">
        @foreach($posts as $r)
        <div class="col-md-12 mb-4">
          <div class="block-3 d-md-flex">
            <a class="image" href="{{route('blog.show',$r)}}" style="background-image: url('{{Voyager::image($r->image)}}'); "></a>
            <div class="text">
              <h2 class="heading"><a href="{{route('blog.show',$r)}}">{{$r->titre}}</a></h2>
              <p class="meta">
                <em>Posté</em> <a href="#">{{$r->created_at->diffForHumans()}}</a>
                {{-- <span class="sep">&bullet;</span> --}}
                {{-- <em>by</em> <a href="#">Admin</a>  --}}
              </p>
              {!! str_limit($r->texte,135) !!}
              <p><a href="{{route('blog.show',$r)}}">Lire plus...</a></p>
            </div>
          </div>
        </div>
        @endforeach
      </div>
    </div>
</div>
@endsection
