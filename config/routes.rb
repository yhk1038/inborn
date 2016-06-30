Rails.application.routes.draw do
  root 'home#entering'
  match "/:controller(/:action(/:id))", :via => [:post, :get]

end
