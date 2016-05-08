Rails.application.routes.draw do
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
