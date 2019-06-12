@extends('layouts.app')

@section('content')
@includeIf('partials.barner')

    <div class="site-section block-13 bg-light pb-5">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-7 section-heading">
                    {{-- <span class="subheading-sm">Les Hôtels</span> --}}
                    <h2 class="heading">Nos Hôtels</h2>
                    {{-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p> --}}
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-13 owl-carousel">
                        @foreach($hotels as $hotel)
                            <div class="item" >
                                <div class="block-34" style="height: 520px">
                                    <div class="image">
                                        <a href="{{route('hotels.show', ['hotel' => $hotel])}}"><img src="{{Voyager::image($hotel->thumbnail('cropped', 'image'))}}" alt="Image placeholder"></a>
                                    </div>
                                    <div class="text">
                                        <a href="{{route('hotels.show', ['hotel' => $hotel])}}"><h2 class="heading">{{str_limit($hotel->name, 26)}}</h2></a>

                                        {!!str_limit($hotel->description, 135)!!}
                                        
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                </div> <!-- .col-md-12 -->
            </div>

            <div class="text-center"><a href="{{route('hotels.index')}}" class="btn btn-primary py-3 px-5">Voir Tous Les Hôtels</a></div>
            
        </div>
    </div>


    <div class="site-section block-13 pb-5 pt-5">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-7 section-heading">
                    {{-- <span class="subheading-sm">Les Hôtels</span> --}}
                    <h2 class="heading">Nos Appartements</h2>
                    {{-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p> --}}
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-13 owl-carousel">
                        @foreach($appartements as $appartement)
                            <div class="item">
                                <div class="block-34" style="height: 520px">
                                    <div class="image">
                                        <a href="{{route('appartements.show', ['appartement' => $appartement])}}"><img src="{{Voyager::image($appartement->thumbnail('cropped', 'image'))}}" alt="Image placeholder"></a>
                                    </div>
                                    <div class="text">
                                        <a href="{{route('appartements.show', ['appartement' => $appartement])}}"><h2 class="heading">{{str_limit($appartement->name, 26)}}</h2></a>
                                        
                                        <div class="price"><span class="number">{{$appartement->prix}} </span><sup>FCFA/par semaine</sup></div>

                                        {!!str_limit($appartement->description, 135)!!}
                                        
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                </div> <!-- .col-md-12 -->
            </div>

            <div class="text-center"><a href="{{route('appartements.index')}}" class="btn btn-primary py-3 px-5">Voir Tous Les Appartements</a></div>

        </div>
    </div>


    <div class="site-section block-13 bg-light pb-5 pt-5">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-7 section-heading">
                    {{-- <span class="subheading-sm">Les Hôtels</span> --}}
                    <h2 class="heading">Nos Restaurants</h2>
                    {{-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p> --}}
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-13 owl-carousel">
                        @foreach($restaurants as $restaurant)
                            <div class="item">
                                <div class="block-34" style="height: 520px">
                                    <div class="image">
                                        <a href="{{route('restaurant.show',$restaurant)}}"><img src="{{Voyager::image($restaurant->thumbnail('cropped', 'image'))}}" alt="Image placeholder"></a>
                                    </div>
                                    <div class="text">
                                        <a href="{{route('restaurant.show',$restaurant)}}"><h2 class="heading">{{str_limit($restaurant->nom, 26)}}</h2></a>
                                       
                                        
                                        {!!str_limit($restaurant->description, 135)!!}
                                        
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>

                </div> <!-- .col-md-12 -->
            </div>

            <div class="text-center"><a href="{{route('restaurant.index')}}" class="btn btn-primary py-3 px-5">Voir Tous Les Restaurants</a></div>

        </div>
    </div>





@endsection
