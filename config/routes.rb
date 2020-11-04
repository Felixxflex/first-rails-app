Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/path/web_development/page", to: "pages#web_development", as: "web_development"
  get "/path/web_application/page", to: "pages#web_application", as: "web_application"
  get "/path/social-media/page", to: "pages#social-media", as: "social-media"
  get "/path/about_development/page", to: "pages#about_development", as: "about_development"
  get "/path/social-media-management/page", to: "pages#social-media-management", as: "social-media-management"
  get "/path/contact/page", to: "pages#contact", as: "contact"
  get "/path/testimonials/page", to: "pages#testimonials", as: "testimonials"
  get "/path/corona-package/page", to: "pages#corona-package", as: "corona-package"
  get "/path/pricing/page", to: "pages#pricing", as: "pricing"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
