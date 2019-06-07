@extends('layouts.app')

@section('content')
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
              <div class="image " style="text-align: center;">
                {{-- <img src="{{Voyager::image($r->image)}}"/> --}}
                <img src="{{Voyager::image($r->thumbnail('small'))}}" />
                {{-- <a href="#"><img src="{{asset('images/menu_1.jpg')}}" alt="Image placeholder"></a> --}}
              </div>
              <div class="text">
                <h2 class="heading">{{$r->nom}}</h2>
                <p>{!!$r->description !!}</p>
                <div class="price"><sup>Fcfa</sup><span class="number">{{$r->prix}}</span></div>
              </div>
            </div>
          </div>

      </div>
      @endforeach
    </div>


  </div>
@endsection
