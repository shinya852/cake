Rails.application.routes.draw do
  #顧客用
  devise_for :customers
  #管理者用
  devise_for :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :genres
  end
end
