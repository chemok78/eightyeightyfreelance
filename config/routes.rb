Rails.application.routes.draw do
  devise_for :employers
  devise_for :freelancers
  root 'pages#home'
  
  get "how" => "pages#how"
  get "privacy" => "pages#privacy"
  get "terms" => "pages#terms"
  get "faq" => "pages#faq"
  get "contact" => "pages#contact"
  
end
