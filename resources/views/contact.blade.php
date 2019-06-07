@extends('layouts.app')

@section('content')
@extends('layouts.app')

@section('content')
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