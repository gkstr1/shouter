# == Route Map
#
#        Prefix Verb   URI Pattern              Controller#Action
# shouts_create GET    /shouts/create(.:format) shouts#create
#          root GET    /                        homes#show
#       session POST   /session(.:format)       sessions#create
#   new_session GET    /session/new(.:format)   sessions#new
#               DELETE /session(.:format)       sessions#destroy
#         users POST   /users(.:format)         users#create
#      new_user GET    /users/new(.:format)     users#new
#          user GET    /users/:id(.:format)     users#show
#     dashboard GET    /dashboard(.:format)     dashboards#show
#         shout GET    /shouts/:id(.:format)    shouts#show
#   text_shouts POST   /text_shouts(.:format)   text_shouts#create
#

Rails.application.routes.draw do
  get 'text_shouts/create'

  get 'shouts/create'

 root 'homes#show', via: :get
    

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resource :dashboard, only: [:show]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
end    
