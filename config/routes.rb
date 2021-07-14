Rails.application.routes.draw do
  resources :recipe_week_join_tables
  resources :menus
  resources :recipes
  scope '/auth' do
    post 'sign_up', to: 'users#create'
    post 'sign_in', to: 'users#sign_in'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
