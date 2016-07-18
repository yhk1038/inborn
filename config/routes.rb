Rails.application.routes.draw do
  devise_for :users
  # devise_scope :users do
  #   get 'sign_in', to: 'devise/sessions#new'
  #   get 'sign_up', to: 'devise/sessions#new'
  # end
  root 'site#entering'
  match "/:controller(/:action(/:id))", :via => [:post, :get]
end
