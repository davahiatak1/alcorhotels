# alcorhotels

## Initialisation

Pour initialiser le projet tapé les commandes suivantes :

    composer update

Assurez-vous ensuite de créer une nouvelle base de données et d'ajouter vos informations d'identification à votre fichier .env. Vous voudrez également ajouter l'URL de votre application dans la variable APP_URL:

    APP_URL=http://localhost:8000
    DB_HOST=localhost
    DB_DATABASE=homestead
    DB_USERNAME=homestead
    DB_PASSWORD=secret

Puis taper la commande suivante : 

    php artisan voyager:install



Créer un nouvel utilisateur administrateur comme suit :

    php artisan voyager:admin your@email.com --create