class StaticPagesController < ApplicationController

	def home

	end
	
	def team

	end

	def contact

	end

	def welcome
    	@first_name_user = params[:first_name]
  	end

  	def potin 
  		@chosen_gossip = params[:potin]
  	end

end
