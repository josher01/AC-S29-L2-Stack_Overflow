Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "questions#index"

  resources :questions, only: [:index, :new, :create, :show ] do
    resources :answers, only: [:create] do

    end 
  end 



  resources :users


  namespace :admin do
    root "questions#index"
  end

end
