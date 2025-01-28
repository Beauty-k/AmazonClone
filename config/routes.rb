Rails.application.routes.draw do
  get "menu/render_partial"
  resources :products
  resources :sessions
  resources :registrations

  get "amazon_clone/index"
  get 'render_form', to: 'amazon_clone#render_form'
  get 'render_signup', to: 'amazon_clone#render_signup'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")

  get '/render_partial', to: 'menu#render_partial'
  get '/render_form', to: 'amazon_clone#render_form'
  post '/registrations', to: 'registrations#new'
  post '/registrations', to: 'registrations#create'
  post '/sessions', to: 'sessions#create'
  root "amazon_clone#index"
  # root "menu#render_partial"


end
