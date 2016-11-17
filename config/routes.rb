Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'   # should make this a welcome page

  get '/find_film/:imdb_id', to: 'films#find_film'
  get '/find_film', to: 'films#find_film'
  # get '/films/:film_name(/:film_year)', to: 'films#find_film'
  get '/top_films', to: 'films#top_films'
  get '/user_top_films', to: 'films#user_top_films'

  resources :users, :votes, :sessions

  get '/vote', to: 'votes#vote'
  # get '/revoke_vote', to: 'votes#revoke_vote'

end
