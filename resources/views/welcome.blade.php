@extends('layouts.app')

@section('content')
@includeIf('partials.barner')
    <div class="container">
{{--         <div class="row mb-5">
            <div class="col-md-12">

                <div class="block-32">
                    <form action="#">
                        <div class="row">
                            <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                                <label for="checkin">Check In</label>
                                <div class="field-icon-wrap">
                                    <div class="icon"><span class="icon-calendar"></span></div>
                                    <input type="text" id="checkin_date" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
                                <label for="checkin">Check Out</label>
                                <div class="field-icon-wrap">
                                    <div class="icon"><span class="icon-calendar"></span></div>
                                    <input type="text" id="checkout_date" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
                                <div class="row">
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label for="checkin">Adults</label>
                                        <div class="field-icon-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                              <option value="">1</option>
                                              <option value="">2</option>
                                              <option value="">3</option>
                                              <option value="">4+</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-3 mb-md-0">
                                        <label for="checkin">Children</label>
                                        <div class="field-icon-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <select name="" id="" class="form-control">
                                              <option value="">1</option>
                                              <option value="">2</option>
                                              <option value="">3</option>
                                              <option value="">4+</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 align-self-end">
                                <button class="btn btn-primary btn-block">Voir Si Disponible</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> --}}

        <div class="row site-section">
            <div class="col-md-12">
                <div class="row mb-5">
                    <div class="col-md-7 section-heading">
                        <span class="subheading-sm">Services</span>
                        <h2 class="heading">Facilities &amp; Services</h2>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-double-bed"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Chambres de Luxe</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-wifi"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Fast &amp; Wifi Disponible</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-customer-service"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Appel 24/7</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-taxi"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Hebergement Voyage</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-credit-card"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Accepte la carte de crédit</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="media block-6">
                    <div class="icon"><span class="flaticon-dinner"></span></div>
                    <div class="media-body">
                        <h3 class="heading">Restaurant</h3>
                        <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="site-section block-13 bg-light pb-0">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-7 section-heading">
                    <span class="subheading-sm">Chambres et Appartements en vedette</span>
                    <h2 class="heading">Chambres &amp; Suites</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="nonloop-block-13 owl-carousel">
                        @foreach($overviewChambres as $chambre)
                            <div class="item">
                                <div class="block-34">
                                    <div class="image">
                                        <a href="{{route('chambres.show', ['hotel' => $chambre->hotel, 'chambre' => $chambre])}}"><img src="{{Voyager::image($chambre->thumbnail('cropped', 'image'))}}" alt="Image placeholder"></a>
                                    </div>
                                    <div class="text">
                                        <h2 class="heading">{{str_limit($chambre->name, 26)}}</h2>
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
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        @foreach($overviewAppartements as $appartement)
                        <div class="item">
                            <div class="block-34">
                                <div class="image">
                                    <a href="{{route('appartements.show', ['appartement' => $appartement])}}"><img src="{{Voyager::image($appartement->thumbnail('cropped', 'image'))}}" alt="{{$appartement->name}}"></a>
                                </div>
                                <div class="text">
                                    <h2 class="heading">{{str_limit($appartement->name, 26)}}</h2>
                                    <div class="price"><span class="number">{{$appartement->prix}} </span><sup>FCFA/par semaine</sup></div>

                                    <ul class="specs">
                                        <li>&nbsp;<strong>&nbsp;</strong> </li>
                                        <li><strong>Appartement</strong>
                                        </li>
                                        <li>&nbsp;<strong>&nbsp;</strong></li>
                                    </ul>
                                    <p><a href="{{route("appartements.show", $appartement)}}" class="btn btn-primary py-3 px-5">Voir plus</a></p>
                                    
                                </div>
                            </div>
                        </div>
                    @endforeach
                    </div>

                </div> <!-- .col-md-12 -->
            </div>
        </div>
    </div>



    <div class="site-section  pt-0" style="background-color: white">
        <div class="container">
            <div class="row">
                <div class="col-md-7 section-heading">
                    <span class="subheading-sm">{{-- Menus --}}</span>
                    <h2 class="heading">Restaurant Menu</h2>
                </div>
            </div>

            <div class="block-35">

                <ul class="nav" id="pills-tab" role="tablist">
                    {{-- <li class="nav-item">
                        <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Breakfast</a>
                    </li> --}}
                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                        <div class="row">
                            <div class="col-md-12 block-13">
                                <div class="nonloop-block-13 owl-carousel">
                                    @foreach($overviewPlats as $plat)
                                        <div class="item">
                                            <div class="block-34">
                                                <div class="image">
                                                    <a href="{{route('restaurant.index', $plat)}}"><img src="{{Voyager::image($plat->thumbnail('cropped', 'image'))}}" alt="{{$plat->nom}}"></a>
                                                </div>
                                                <div class="text">
                                                    <h2 class="heading">{{str_limit($plat->name, 29)}}</h2>
                                                    <p>{!!str_limit($plat->description,90)!!}</p>
                                                    <div class="price"><span class="number">{{$plat->prix}}</span><sup>Fcfa</sup></div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-12">
                    <h2 class="heading">Quality accommodation that exceeds the expectations</h2>
                    <p><a href="#" class="btn py-4 px-5 btn-primary">Learn More</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section bg-light">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-7 section-heading">
                    <span class="subheading-sm">Reviews</span>
                    <h2 class="heading">Guest Reviews</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-4">

                    <div class="block-33">
                        <div class="vcard d-flex mb-3">
                            <div class="image align-self-center"><img src="images/person_3.jpg" alt="Person here"></div>
                            <div class="name-text align-self-center">
                                <h2 class="heading">Martin Newmansfield</h2>
                                <span class="meta">Satisfied Customer</span>
                            </div>
                        </div>
                        <div class="text">
                            <blockquote>
                                <p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
                            </blockquote>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 col-lg-4">

                    <div class="block-33">
                        <div class="vcard d-flex mb-3">
                            <div class="image align-self-center"><img src="images/person_2.jpg" alt="Person here"></div>
                            <div class="name-text align-self-center">
                                <h2 class="heading">Nancy Green</h2>
                                <span class="meta">Satisfied Customer</span>
                            </div>
                        </div>
                        <div class="text">
                            <blockquote>
                                <p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
                            </blockquote>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 col-lg-4">

                    <div class="block-33">
                        <div class="vcard d-flex mb-3">
                            <div class="image align-self-center"><img src="images/person_1.jpg" alt="Person here"></div>
                            <div class="name-text align-self-center">
                                <h2 class="heading">Elizabeth Charles</h2>
                                <span class="meta">Satisfied Customer</span>
                            </div>
                        </div>
                        <div class="text">
                            <blockquote>
                                <p>&rdquo; Lorem ipsum dolor sit amet consectetur adipisicing elit. Fuga aliquid. Atque dolore esse veritatis iusto eaque perferendis non dolorem fugiat voluptatibus vitae error ad itaque inventore accusantium tempore dolores sunt. &ldquo;</p>
                            </blockquote>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection
