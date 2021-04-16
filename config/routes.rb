Rails.application.routes.draw do
  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  root 'home#index'
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
