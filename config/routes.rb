Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :sessions, only:[:new, :destroy]
  resource :users, only:[:new, :destroy, :create]

end
