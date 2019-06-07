@extends('layouts.app')

@section('content')


<div class="site-section bg-light">
    <div class="container">
        <div class="row mt-2">
            <div class="col-md-12">

                <div class="block-3 d-md-flex">
                    <div class="image" style="background-image: url('{{Voyager::image($hotel->thumbnail('cropped', 'image'))}}'); "></div>
                    <div class="text">

                        <h2 class="heading">{{str_limit($hotel->name, 90)}}</h2>

                        {!! str_limit($hotel->description, 255)!!}
                        

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

@endsection