@extends('layouts.app')

@section('content')

<div class="site-section bg-light">
	<div class="container">
		<div class="row mb-5">

			@foreach($hotels as $hotel)
				@if($loop->iteration%2)
					<div class="col-md-12 mb-5">

						<div class="block-3 d-md-flex">
							<div class="image" style="background-image: url('{{Voyager::image($hotel->thumbnail('cropped', 'image'))}}'); "></div>
							<div class="text">

								<h2 class="heading">{{str_limit($hotel->name, 90)}}</h2>

								{!! str_limit($hotel->description, 255)!!}

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