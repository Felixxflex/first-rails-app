Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  get "/path/web_development/page", to: "pages#web_development", as: "web_development"
  get "/path/web_app/page", to: "pages#web_app", as: "web_app"
  get "/path/social_media/page", to: "pages#social_media", as: "social_media"
  get "/path/about/page", to: "pages#about", as: "about"
  get "/path/benefits/page", to: "pages#benefits", as: "benefits"
  get "/path/contact/page", to: "pages#contact", as: "contact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
