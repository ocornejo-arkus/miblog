Rails.application.routes.draw do
  # get 'articulos/new'
  # get 'articulos/index'
  resources :articulos
  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  get 'home/index'
  root 'articulos#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
