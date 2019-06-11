@extends('layouts.app')

@section('content')


<div class="site-section bg-light">
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-12">
                <div class="block-34">
                    <div class="image">
                        <a href="#"><img src="{{Voyager::image($chambre->thumbnail('detail', 'image'))}}"></a>
                    </div>
                    <div class="text">
                        <h2 class="heading">{{str_limit($chambre->name, 90)}}</h2>
                        <div class="price"><span class="number">{{$chambre->prix}} </span><sup>FCFA/par jour</sup></div>
                        <ul class="specs">
                            <li><strong>Adults:</strong> {{$chambre->adulte}}</li>
                            <li><strong>Categories:</strong> {{$chambre->categorie}}</li>
                            <li><strong>Facilities:</strong>
                            @php
                                $facilitie = str_replace_array('"', [' ',], $chambre->facilitie);

                                $facilitie = str_replace_array('[', [' ',], $facilitie);

                                $facilitie = str_replace_array('"]', [' ',], $facilitie);

                                $facilitie = str_replace_array('","', [', ',], $facilitie);
                            @endphp
                             {{$facilitie}}</li>
                            <li><strong>Size:</strong> {{$chambre->size}}m<sup>2</sup></li>
                            <li><strong>Bed Type:</strong> {{$chambre->bed}} bed</li>
                        </ul>
                        <p><a href="#" class="btn btn-primary py-3 px-5 reserve-modal" data-image="{{Voyager::image($chambre->thumbnail('medium', 'image'))}}" data-name="{{$chambre->name}}" data-prix="{{$chambre->prix}}">Reserver</a></p>
                         {!!$chambre->description!!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@if($chambres->isNotEmpty())
    <div class="site-section bg-light p-0">
        <div class="container">
            <div class="row mb-5 justify-content-center">
                <div class="col-md-7 text-center section-heading">
                    <h2 class="heading">Autres salles et chambres de {{$hotel->name}}</h2>
                    <p>Cliquez vous voir plus de description sur une chambre ou la salle de {{$hotel->name}}</p>
                </div>
            </div>

            <div class="row">
                @foreach($chambres as $chbre)
                    <div class="col-lg-4 mb-5">
                        <div class="block-34">
                            <div class="image">
                                <a href="{{route('chambres.show', ['hotel' => $chambre->hotel, 'chambre' => $chbre])}}"><img src="{{Voyager::image($chbre->thumbnail('cropped', 'image'))}}" alt="{{$chbre->name}}"></a>
                            </div>
                            <div class="text">
                                <h2 class="heading">{{str_limit($chbre->name, 26)}}</h2>
                                <div class="price"><span class="number">{{$chbre->prix}} </span><sup>FCFA/par jour</sup></div>
                                <ul class="specs">
                                    <li><strong>Adults:</strong> {{$chbre->adulte}}</li>
                                    <li><strong>Categories:</strong> {{$chbre->categorie}}</li>
                                    <li><strong>Facilities:</strong> 
                                        @php
                                            $facilitie = str_replace_array('"', [' ',], $chbre->facilitie);

                                            $facilitie = str_replace_array('[', [' ',], $facilitie);

                                            $facilitie = str_replace_array('"]', [' ',], $facilitie);

                                            $facilitie = str_replace_array('","', [', ',], $facilitie);
                                        @endphp
                                        {{$facilitie}}</li>
                                    <li><strong>Size:</strong> {{$chbre->size}}m<sup>2</sup></li>
                                    <li><strong>Bed Type:</strong> {{$chbre->bed}} bed</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif

@endsection