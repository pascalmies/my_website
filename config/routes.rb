Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "/blog", to: "posts#index"
    get "/about", to: "pages#about"
    get "/resume", to: "pages#resume"
    get "/contact", to: "pages#contact"

  resources :posts, only: [:show, :new, :create, :destroy]
end
