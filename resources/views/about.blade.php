@extends('layouts.app')

@section('content')
 <div class="site-section">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-12">
        <img src="{{Voyager::image($about->image)}}" class="img-fluid"/>
      </div>
    </div>
    <div class="row">
      <div class="col-md-1"></div>
      <div class="col-md-10">{!! $about->texte1 !!}</div>
    </div>
  </div>
</div>
@endsection
