@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('{{asset('images/bg_2.jpg')}}'); min-height: 580px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Hébergement </span>
              <h2 class="heading">Des chambres d'hôtels luxeuses</h2>
        </div>
      </div>
    </div>
  </div>

<div class="site-section bg-light">
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-12">
                <div class="block-34">
                    <div class="image">
                        <a href="#"><img src="{{Voyager::image($hotel->thumbnail('detail', 'image'))}}"></a>
                    </div>
                    <div class="text">
                        <h2 class="heading">{{$hotel->name}}</h2>

                         {!!$hotel->description!!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<div class="site-section bg-light p-0">
    <div class="container">

        <div class="row mb-5 justify-content-center">
            <div class="col-md-7 text-center section-heading">
                <h2 class="heading">Les salles et chambres de {{$hotel->name}}</h2>
                <p>Cliquez vous voir plus de description sur une chambre ou la salle de {{$hotel->name}}</p>
            </div>
        </div>

        <div class="row">
            @foreach($chambres as $chambre)
                <div class="col-lg-4 mb-5">
                    <div class="block-34">
                        <div class="image">
                            <a href="{{route('chambres.show', ['hotel' => $hotel, 'chambre' => $chambre])}}"><img src="{{Voyager::image($chambre->thumbnail('cropped', 'image'))}}" alt="{{$chambre->name}}"></a>
                        </div>
                        <div class="text">
                            <h2 class="heading">{{str_limit($chambre->name, 90)}}</h2>

                            <div class="price"><span class="number">{{$chambre->prix}} </span><sup>FCFA/par jour</sup></div>

                            <ul class="specs">
                                <li><strong>Nbre Adultes:</strong> {{$chambre->adulte}}</li>
                                <li><strong>Types:</strong> {{$chambre->categorie}}</li>
                                <li><strong>Accesoires:</strong>
                                    @php
                                        $facilitie = str_replace_array('"', [' '], $chambre->facilitie);

                                        $facilitie = str_replace_array('[', [' '], $facilitie);

                                        $facilitie = str_replace_array('"]', [' '], $facilitie);

                                        $facilitie = str_replace_array('","', [', '], $facilitie);
                                    @endphp
                                    {{$facilitie}}</li>
                                <li><strong>Superficie:</strong> {{$chambre->size}}m<sup>2</sup></li>
                                <li><strong>Nbre de lits:</strong> {{$chambre->bed}} </li>
                            </ul>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

@endsection
