@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg'); min-height: 280px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Appartements </span>
              <h2 class="heading">Des appartements luxueux</h2>
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
                        <a href="#"><img src="{{Voyager::image($appartement->thumbnail('detail', 'image'))}}"></a>
                    </div>
                    <div class="text">
                        <h2 class="heading">{{str_limit($appartement->name, 90)}}</h2>
                        <div class="price"><span class="number">{{$appartement->prix}} </span><sup>FCFA/par semaine</sup></div>
                        <p><a href="#" class="btn btn-primary py-3 px-5 reserve-modal" data-image="{{Voyager::image($appartement->thumbnail('medium', 'image'))}}" data-name="{{$appartement->name}}" data-prix="{{$appartement->prix}}">Rserver</a></p>
                         {!!$appartement->description!!}


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
                <h2 class="heading">D'autres appartements disponibles</h2>
                <p>Le groupe Alcor dispose de plusieurs appartements meublés, clématisés avec connection Internet qui peuvent vous interessez </p>
            </div>
        </div>

        <div class="row">
            @foreach($appartements as $appartement)
                <div class="col-lg-4 mb-5">
                    <div class="block-34">
                        <div class="image">
                            <a href="{{route('appartements.show', ['appartement' => $appartement])}}"><img src="{{Voyager::image($appartement->thumbnail('cropped', 'image'))}}" alt="{{$appartement->name}}"></a>
                        </div>
                        <div class="text">
                            <h2 class="heading">{{str_limit($appartement->name, 26)}}</h2>

                            <div class="price"><span class="number">{{$appartement->prix}} </span><sub>FCFA/par semaine</sub></div>

                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

@endsection
