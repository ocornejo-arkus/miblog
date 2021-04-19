Rails.application.routes.draw do
  devise_for :autors
  resources :articulos do
    resources :comentarios
  end
  get 'estaticas/contacto'
  get 'estaticas/nosotros'
  get 'home/index'
  root 'articulos#index'

  get '*path' => redirect('/')
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
