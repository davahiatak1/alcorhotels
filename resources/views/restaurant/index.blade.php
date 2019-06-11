@extends('layouts.app')

@section('content')

  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('images/bg_3.jpg')}}'); min-height: 580px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Restauration</span>
              <h2 class="heading">Nos Restaurants et leur meilleurs Plats</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class=" site-section">
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
    <div class="row">
      <div class="col-lg-2"></div>
      <div  class="col-lg-8" style="border: 1px solid gray;"></div>
      <div class="col-lg-2"></div>
    </div>
    <br>
    @endforeach
  </div>


</div>
@endsection
