@extends('layouts.app')

@section('content')
 <div class="block-30 block-30-sm item" style="background-image: url('images/bg_2.jpg'); min-height: 280px;" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Contact </span>
              <h2 class="heading">Posez nous vos questions</h2>
        </div>
      </div>
    </div>
  </div>
    <div class="site-section">
        <div class="container">
            @if (session('status'))
                <div class="alert alert-success">
                    {{ session('status') }}
                </div>
            @endif
            <h2 class="text-center">Contactez-nous</h2>
            <div class="row block-9">
                <div class="col-md-3"></div>
                <div class="col-md-6 pr-md-5">
                    <form action="{{route('contacts.store')}}" method="POST">
                        @csrf
                        <div class="form-group">
                            <input type="text" name="name" class="form-control px-3 py-3" placeholder="Votre Nom" required="">
                        </div>
                        <div class="form-group">
                            <input type="text" name="email" class="form-control px-3 py-3" placeholder="Votre Email">
                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" class="form-control px-3 py-3" placeholder="Telephone" required="">
                        </div>
                        <div class="form-group">
                            <textarea name="message" id="" cols="30" rows="7" class="form-control px-3 py-3" placeholder="Message" required=""></textarea>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Envoyer" class="btn btn-primary py-3 px-5">
                        </div>
                    </form>

                </div>


            </div>
        </div>
    </div>

@endsection
