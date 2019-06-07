@extends('layouts.app')

@section('content')
  <div class="container">
    <h2>restaurant</h2>



    @foreach($restaurants as $r)
    <div class="row ">
      {{-- site-section --}}
      <div class="col-lg-7 mb-5">
        <img src="{{Voyager::image($r->image)}}" class="img-fluid img-shadow"/>
        {{-- <img src="{{ asset($r->image)}}" alt="Image placeholder" class="img-fluid img-shadow"> --}}
      </div>
      <div class="col-lg-5 pl-md-5">

        <div class="media block-6">
          <div class="icon"><span class="ion-ios-checkmark"></span></div>
          <div class="media-body">
            <h3 class="heading">{{$r->nom}}</h3>
            <p>{!!$r->description!!}</p>
            <a href="{{route('restaurant.show',$r->id)}}" class="btn btn-primary">Détails</a>
          </div>

        </div>
      </div>
    </div>
    @endforeach

  </div>
@endsection
