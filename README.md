# alcorhotels

## Initialisation 1

Cloner le projet `git clone https://github.com/davahiatak1/alcorhotels.git` et importer la base de données en utilisant le fichier sql se trouvant dans le dossier `database`


Ensuite créer un nouvel utilisateur administrateur avec cette commande :

    php artisan voyager:admin your@email.com --create


puis cette commande pour créer un lien symbolique pour rendre accessible les fichiers uploader

    php artisan voyager:admin your@email.com --create


## Initialisation 2

Pour initialiser le projet tapé les commandes suivantes :

    composer update

Assurez-vous ensuite de créer une nouvelle base de données et d'ajouter vos informations d'identification au fichier .env. Vous devez également ajouter l'URL de votre application dans la variable APP_URL:

    APP_URL=http://localhost:8000
    DB_HOST=localhost
    DB_DATABASE=homestead
    DB_USERNAME=homestead
    DB_PASSWORD=secret

Puis taper la commande suivante : 

    php artisan voyager:install



Créer un nouvel utilisateur administrateur comme suit :

    php artisan voyager:admin your@email.com --create


