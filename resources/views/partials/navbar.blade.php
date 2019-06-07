<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">AlcorHotels</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="/" class="nav-link">Accueil</a></li>
                <li class="nav-item"><a href="{{route('hotels.index')}}" class="nav-link">Hôtels</a></li>
                <li class="nav-item"><a href="{{route('appartements.index')}}" class="nav-link">Résidences</a></li>
                <li class="nav-item"><a href="{{route('restaurant.index')}}" class="nav-link">Restaurant</a></li>
                
                <li class="nav-item"><a href="{{route('posts.index')}}" class="nav-link">Actualités</a></li>
                <li class="nav-item"><a href="{{route('about.index')}}" class="nav-link">A propos</a></li>

                <li class="nav-item"><a href="{{route('contacts.index')}}" class="nav-link">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>

