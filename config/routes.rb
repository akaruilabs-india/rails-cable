Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#chats'
  post '/chats', to: 'application#create_chat', as: 'create_chat'
end
