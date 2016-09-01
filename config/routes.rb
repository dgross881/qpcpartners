Rails.application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  namespace :admin do
    resources :real_estates
    resources :services
    resources :contacts
    resources :slides
    resources :summary

    root to: "real_estates#index"
  end

  filter :locale
  get "contact/new" => "contacts#new"
  root :to => 'pages#home'
  
  get "/summary" => "pages#summary", as: :summary
  get "/services" => "pages#services", as: :services
  get "/consulting" => "pages#consulting", as: :consulting
  get "/investment" => "pages#investment", as: :investment
  get "/real_estate" => "pages#real_estate", as: :real_estate
  get "/contact" => "pages#contact", as: :contact
end
