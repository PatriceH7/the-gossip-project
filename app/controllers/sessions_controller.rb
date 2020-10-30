class SessionsController < ApplicationController

  def new
    session = User.new
  end
  
  def create
    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to gossips_path
    else
      flash.now[:danger] = 'Combinaison email/mot de passe invalide !'
      render 'new'
    end
  end

  def destroy
    if session.delete(:user_id)
      flash[:danger] = 'Au revoir !'
      redirect_to gossips_path
    end
  end
end
