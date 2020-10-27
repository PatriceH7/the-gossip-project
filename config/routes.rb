Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'static_pages#home', as: 'home'
  get '/welcome/:first_name', to: 'static_pages#welcome', as: 'welcoming'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
end
