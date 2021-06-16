Rails.application.routes.draw do
  devise_for :users
  resources :proponentes
  resources :enderecos

  get 'proponente/desconto_inss', to: 'proponentes#apply_desconto_inss', as: 'apply_desconto_inss'
  root to: 'proponentes#index'
end
