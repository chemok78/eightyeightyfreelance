Rails.application.routes.draw do
  root 'pages#home'
  
  get "how" => "pages#how"
  get "privacy" => "pages#privacy"
  get "terms" => "pages#terms"
  get "faq" => "pages#faq"
  get "contact" => "pages#contact"
  
end
