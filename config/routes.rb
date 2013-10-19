UserImpersonate::Engine.routes.draw do
  match("/user/:user_id" , to: "impersonate#create", as: :impersonate_user, via: [:get])
  match("/revert" , to: "impersonate#destroy", as: :revert_impersonate_user, via: [:get])
  
  root to: "impersonate#index"
end
