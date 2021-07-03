Rails.application.routes.draw do
  resources :recipe_week_join_tables
  resources :menus
  resources :recipes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
