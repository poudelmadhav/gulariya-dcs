Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'received_transformer' => 'transformer_pages#received_transformer'
  get 'send_transformer' => 'transformer_pages#send_transformer'
  get 'remaining_transformer' => 'transformer_pages#remaining_transformer'


  root 'records#index'

  resources :contents

  resources :records
end
