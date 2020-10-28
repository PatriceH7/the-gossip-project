class GossipsController < ApplicationController

  def new
    # Méthode qui crée un potin vide et l'envoie à une view qui affiche le formulaire pour 'le remplir' (new.html.erb)
    @gossip = Gossip.new
  end

  def create
    # Méthode qui créé un potin à partir du contenu du formulaire de new.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params (ton meilleur pote)
    # Une fois la création faite, on redirige généralement vers la méthode show (pour afficher le potin créé)
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60


   # binding.pry
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id:11)

    if @gossip.save
      redirect_to home_path, notice: "Potin sauvegardé, merci pour ta contribution !"
      puts "Potin sauvegardé"
    else
      puts "La sauvegarde n'a pu être faite. Voici pourquoi :"
      puts @gossip.errors.messages
     render'new', alert: "Le potin n'a pu être sauvegardé, vois pourquoi ds la notification."
    end

  end


end
