@extends('layouts.app')

@section('content')
  <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg'); min-height: 280px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">BIOGRAPHIE </span>
              <h2 class="heading">A propos du GROUPE <b>ALCOR</b></h2>
        </div>
      </div>
    </div>
  </div>

 <div class="site-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-5" style="text-align: center;">
        <img src="{{Voyager::image($about->image)}}" class="img-fluid"/>
      </div>
      <div class="col-md-7">{!! $about->texte1 !!}</div>
    </div>
    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-10">{!! $about->texte2 !!}</div>
    </div>
  </div>
</div>
@endsection
