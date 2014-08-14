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
#     dashboard GET    /dashboard(.:format)     dashboards#show
#        shouts POST   /shouts(.:format)        shouts#create
#

Rails.application.routes.draw do
  get 'shouts/create'

 root 'homes#show', via: :get
    

  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resource :dashboard, only:[:show]
  resources :shouts, only:[:create, :show]

end
