Rails.application.routes.draw do


  namespace :users do
  	get 'users/confirmation' =>  'users#confirmation', as: 'confirmation'
  	get '/homes/top' => 'homes#top', as: 'homes'
    resources :users, only: [:new, :create]
    resources :stores, only: [:new, :create, :index, :show, :edit, :update]
    resources :menus, only: [:new, :create, :index, :show, :edit, :update]
    resources :coupons, only: [:new, :create, :index, :show, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
