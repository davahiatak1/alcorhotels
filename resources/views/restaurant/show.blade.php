@extends('layouts.app')

@section('content')
  <div class="block-30 block-30-sm item" style="background-image: url('images/bg_3.jpg'); min-height: 580px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Restauration | Détails sur <b>{{$restaurant->nom}}</b></span>
              <h2 class="heading">Nos Restaurants et leurs meilleurs Plats</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    {{-- <h2>restaurant -> plats</h2> --}}
<br>
 <div class="row ">
      {{-- site-section --}}
      <div class="col-lg-7 mb-5">
        <img src="{{Voyager::image($restaurant->thumbnail('medium'))}}" />
        {{-- <img src="{{ asset($restaurant->image)}}" alt="Image placeholder" class="img-fluid img-shadow"> --}}
      </div>
      <div class="col-lg-5 pl-md-5">

        <div class="media block-6">
          <div class="icon"><span class="ion-ios-checkmark"></span></div>
          <div class="media-body">
            <h3 class="heading">{{$restaurant->nom}}</h3>
            <p>{!!$restaurant->description!!}</p>
          </div>

        </div>
      </div>
    </div>

    <div  style="border-bottom: solid red; "></div>
    <br>

    <div class="row">
    @foreach($plats as $r)    
      <div class="col-lg-4 block-13">
          <div class="item">
            <div class="block-34">
              <div class="image ">
                {{-- <img src="{{Voyager::image($r->image)}}"/> --}}

                <img src="{{Voyager::image($r->thumbnail('cropped'))}}" />
                {{-- <a href="#"><img src="{{asset('images/menu_1.jpg')}}" alt="Image placeholder"></a> --}}
              </div>
              <div class="text">
                <h2 class="heading">{{ str_limit($r->nom, 35)}}</h2>
                <p>{!! str_limit($r->description, 90) !!}</p>
                <div class="price"><span class="number">{{$r->prix}}</span><sup>Fcfa</sup></div>
              </div>
            </div>
          </div>

      </div>
      @endforeach
    </div>


  </div>
@endsection
