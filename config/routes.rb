Rails.application.routes.draw do
  root 'home#index'
  match "/:controller(/:action(/:id))", :via => [:post, :get]
end
