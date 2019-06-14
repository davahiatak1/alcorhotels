<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="/"><img src="{{asset('images/alcor-logo48.png')}}"  class="img-circle" style="border-radius: 50%; width: 64px; height: 64px" alt=""><b> GROUPE ALCOR</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item {{set_active_route('/')}}"><a href="/" class="nav-link">Accueil</a></li>
                <li class="nav-item {{set_active_route('hotels.index')}}" ><a href="{{route('hotels.index')}}" class="nav-link">Hôtels</a></li>
                <li class="nav-item {{set_active_route('appartements.index')}}" ><a href="{{route('appartements.index')}}" class="nav-link">Appartements</a></li>
                <li class="nav-item {{set_active_route('restaurant.index')}} {{set_active_route('restaurant.show')}}" ><a href="{{route('restaurant.index')}}" class="nav-link">Restaurant</a></li>

                <li class="nav-item {{set_active_route('blog.index')}}{{set_active_route('blog.show')}}" ><a href="/blogs" class="nav-link">Actualités</a></li>
                <li class="nav-item {{set_active_route('about.index')}}" ><a href="{{route('about.index')}}" class="nav-link">A propos</a></li>

                <li class="nav-item {{set_active_route('contacts.index')}}" ><a href="{{route('contacts.index')}}" class="nav-link">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>
