Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :films

  root 'films#top_films'

  get '/find_film/:imdb_id', to: 'films#find_film'
  get '/find_film', to: 'films#find_film'
  # get '/films/:film_name(/:film_year)', to: 'films#find_film'


end
