Rails.application.routes.draw do
 

  root "welcome#index"
  get "/instructor/:id" => "instructors#show", :as => "instructor"
  get "/students" => "students#index"
  get "/student/:id" => "students#show"
  post "/assign" => "students#assign"
  resources :cohorts
  resources :courses
  devise_for :admins
  devise_for :students
  devise_for :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
