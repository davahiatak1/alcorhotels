@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg'); min-height: 280px;" data-stellar-background-ratio="0.5">
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
		<div class="row mb-5">

			@foreach($hotels as $hotel)
				@if($loop->iteration%2)
					<div class="col-md-12 mb-5">

						<div class="block-3 d-md-flex">
							<div class="image" style="background-image: url('{{Voyager::image($hotel->thumbnail('cropped', 'image'))}}'); "></div>
							<div class="text">

								<h2 class="heading">{{str_limit($hotel->name, 50)}}</h2>

								{!! str_limit($hotel->description, 135)!!}

								<p><a href="{{route("hotels.show", $hotel)}}" class="btn btn-primary py-3 px-5">Voir Plus</a></p>

							</div>
						</div>


					</div>

				@else
					<div class="col-md-12 mb-5">

						<div class="block-3 d-md-flex">
							<div class="image order-2" style="background-image: url('{{Voyager::image($hotel->thumbnail('cropped', 'image'))}}'); "></div>
							<div class="text order-1">

								<h2 class="heading">{{str_limit($hotel->name, 90)}}</h2>

								{!! str_limit($hotel->description, 255)!!}

								<p><a href="{{route("hotels.show", $hotel)}}" class="btn btn-primary py-3 px-5">Voir Plus</a></p>

							</div>
						</div>


					</div>
				@endif
			@endforeach


		</div>
	</div>
</div>


@endsection
