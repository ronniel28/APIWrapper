Rails.application.routes.draw do
  root to: 'pages#main'
  get 'start', to: 'pages#start'
  get 'search_date', to: 'pages#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
