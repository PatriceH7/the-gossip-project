class UsersController < ApplicationController

	def new
		@user = User.new 
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
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], description: params[:description], email: params[:email], age: params[:age], city_id: params[:city_id], password: params[:password])

    if @user.save
    	puts "Utilisateur sauvegardé"	
      redirect_to gossips_path, notice: "Profil créé, tu vas pouvoir rapporter de nouveaux potins !"
      
    else
      puts "Nous n'avons pas pu créer ton profil. Voici pourquoi :"
      puts @user.errors.messages
     render'new', alert: "Ton profil utilisateur n'a pas pu être sauvegardé, vois pourquoi ds la notification."
    end

  end

	def show
		@user = User.find(params[:id])
		@author_info = Gossip.find(params[:id]).user
		@user_city = @author_info.city.name 
	end


end