Rails.application.routes.draw do
  get 'landing/index'
  get 'update_schools', to: 'landing#update_schools'
  get 'update_years', to: 'landing#update_years'
  get 'show_exams', to: 'landing#show_exams'
  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
