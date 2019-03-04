Rails.application.routes.draw do

  resources :companys, only: %i[index create]
  root 'companys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
