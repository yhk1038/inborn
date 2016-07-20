Rails.application.routes.draw do
  devise_for :users
  # devise_scope :users do
  #   get 'sign_in', to: 'devise/sessions#new'
  #   get 'sign_up', to: 'devise/sessions#new'
  # # end

  get '/intro(/:tab)', to: 'site#intro'
  get '/member(/:tab)', to: 'site#member'

  match "/sites(/:id)", to: 'site#page', :via => [:post, :get]

  root 'site#entering'
  match "/:controller(/:action(/:id(/:target)))", :via => [:post, :get]
end
