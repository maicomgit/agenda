Agenda::Application.routes.draw do
  resources :usuarios

  get  '/login', to: 'login#login',  as: :login
  post '/logar', to: 'login#logar',  as: :logar
  get  '/logout', to: 'login#logout', as: :logout

  root to: 'login#login'

  resources :contatos




 
end
