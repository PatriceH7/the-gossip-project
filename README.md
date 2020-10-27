# README for The Gossip Project

Runs on Ruby 2.7.1

Il s'agit de la première partie du projet The Gossip Projet mettant en pratique Ruby on Rails et le paradigme de code MVC.

Nous nous sommes concentrés sur la page d'accueil, qui affiche tous les potins créés, et permet, via des liens, de présenter l'équipe de The Gossip Project, ainsi que son contact.
Nous avons également créé une page cachée de bienvenue, qui accueille l'utilisateur en fonction du nom passé dans l'URL.
Enfin, un lien direct permet d'afficher les principaux éléments de chaque potin.

Pour lancer l'application et le serveur local, if suffit de se placer dans le dossier the-gossip-project, d'initier un bundle install, puis de lancer : rails server.


Puis dans l'url, on saisira les différentes options:
- http://localhost:3000 pour afficher la page d'accueil par défaut
- http://localhost:3000/team pour afficher le team
- http://localhost:3000/contact pour afficher le contact de l'équipe
et en bonus
- http://localhost:3000/welcome/:firstname pour un message personnalisé d'accueil
- http://localhost:3000/:potin pour afficher le détail d'un potin particulier
