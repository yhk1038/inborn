Rails.application.routes.draw do
  root 'site#entering'
  match "/:controller(/:action(/:id))", :via => [:post, :get]
end
