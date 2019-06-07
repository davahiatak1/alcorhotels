@extends('layouts.app')

@section('content')


<div class="site-section bg-light">
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-8">
                <div class="block-34">
                    <div class="image">
                        <a href="#"><img src="{{Voyager::image($chambre->thumbnail('cropped', 'image'))}}"></a>
                    </div>
                    <div class="text">
                        <h2 class="heading">{{$chambre->name}}</h2>
                        <div class="price"><span class="number">{{$chambre->prix}} </span><sub>FCFA/par jour</sub></div>
                        <p><a href="#" class="btn btn-primary py-3 px-5">Rserver</a></p>
                         {!!$chambre->description!!}
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                @foreach($chambres as $chambre)
                    <div class="col-md-4">
                        <div class="block-34">
                            <div class="image">
                                <a href="#"><img src="{{Voyager::image($chambre->thumbnail('cropped', 'image'))}}" alt="{{$chambre->name}}"></a>
                            </div>
                            <div class="text">
                                <h2 class="heading">{{str_limit($chambre->name, 90)}}</h2>
                                {!!$chambre->description!!}
                                <div class="price"><span class="number">{{$chambre->prix}} </span><sub>FCFA/par jour</sub></div>
                                
                            </div>
                        </div>
                    </div>

                    @if($loop->iteration == 2) @break @endif
                @endforeach 
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
                @foreach($chambres as $chambre)
                    @if($loop->iteration <= 2) @continue @endif
                    <div class="col-lg-4 mb-5">
                        <div class="block-34">
                            <div class="image">
                                <a href="#"><img src="{{Voyager::image($chambre->thumbnail('cropped', 'image'))}}" alt="{{$chambre->name}}"></a>
                            </div>
                            <div class="text">
                                <h2 class="heading">{{str_limit($chambre->name, 90)}}</h2>
                                {!!$chambre->description!!}
                                <div class="price"><span class="number">{{$chambre->prix}} </span><sub>FCFA/par jour</sub></div>
                                {{-- <div class="price"><sup>$</sup><span class="number">156</span><sub>/per night</sub></div>
                                <ul class="specs">
                                    <li><strong>Adults:</strong> 1</li>
                                    <li><strong>Categories:</strong> Single</li>
                                    <li><strong>Facilities:</strong> Closet with hangers, HD flat-screen TV, Telephone</li>
                                    <li><strong>Size:</strong> 20m<sup>2</sup></li>
                                    <li><strong>Bed Type:</strong> One bed</li>
                                </ul> --}}
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif

@endsection