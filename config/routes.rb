Rails.application.routes.draw do
  #顧客用
  devise_for :customers
  #管理者用
  devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  namespace :admin do
  resources :genres
  resources :items
  end
end
