Rails.application.routes.draw do
  # talking to the controllers
  root to: 'pages#home'
  # get '/', to: 'pages#home'

  # http_verb 'path', to: 'controller#action', as: :prefix
  get '/about', to: 'pages#about', as: :about
  get '/contact', to: 'pages#contact', as: :contact
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  post '/restaurants', to: 'restaurants#create'
  # :id is a placeholder
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end

# index -> all
# show -> one


# localhost:3000/restaurants -> restaurants_controller
# localhost:3000/contact
# localhost:3000/restaurants
