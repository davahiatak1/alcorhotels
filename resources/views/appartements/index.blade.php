@extends('layouts.app')

@section('content')

<div class="site-section bg-light">
	<div class="container">
		<div class="row mb-5">

			@foreach($appartements as $appartement)
				@if($loop->iteration%2)
					<div class="col-md-12 mb-5">

						<div class="block-3 d-md-flex">
							<div class="image" style="background-image: url('{{Voyager::image($appartement->thumbnail('cropped', 'image'))}}'); "></div>
							<div class="text">

								<h2 class="heading">{{str_limit($appartement->name, 90)}}</h2>

								<div class="price"><span class="number">{{$appartement->prix}} </span><sup>FCFA/par semaine</sup></div>

								{!! str_limit($appartement->description, 255)!!}

								<p><a href="{{route("appartements.show", $appartement)}}" class="btn btn-primary py-3 px-5">Voir Plus</a></p>

							</div>
						</div>


					</div>  

				@else
					<div class="col-md-12 mb-5">

						<div class="block-3 d-md-flex">
							<div class="image order-2" style="background-image: url('{{Voyager::image($appartement->thumbnail('cropped', 'image'))}}'); "></div>
							<div class="text order-1">

								<h2 class="heading">{{str_limit($appartement->name, 90)}}</h2>

								{!! str_limit($appartement->description, 255)!!}

								<p><a href="{{route("appartements.show", $appartement)}}" class="btn btn-primary py-3 px-5">Voir Plus</a></p>

							</div>
						</div>


					</div>
				@endif
			@endforeach  
 

		</div>
	</div>
</div>
    

@endsection