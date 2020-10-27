# README for The Gossip Project

Runs on Ruby 2.7.1

Nous allons commencer aujourd'hui par créer les premières pages :

La page d'accueil, bien entendu. Cette page d'accueil affichera tous les potins créés
La page qui présente l'équipe de The Gossip Project, aka toi et ton binome
La page de contact où tu vas balancer une superbe adresse de contact
Une page de bienvenue, qui accueille l'utilisateur en fonction du nom passé dans l'URL

Pour lancer l'application, lancer : rails server
Puis dans l'url, saisir les différentes options:
- http://localhost:3000 pour afficher la page d'accueil par défaut
- http://localhost:3000/team pour afficher le team
- http://localhost:3000/contact pour afficher le contact de l'équipe
et en bonus
- http://localhost:3000/welcome/:firstname pour un message personnalisé d'accueil
