Rails.application.routes.draw do
 
  root "welcome#index"
  get "/instructors" => "instructors#index", :as => "instructors"
  get "/instructor/:id" => "instructors#show", :as => "instructor"
  get "/students" => "students#index"
  get "/student/:id" => "students#show"
  post "/assign" => "students#assign"
  get "/contact" => "welcome#contact"

  delete "/remove_cohort" => "students#remove_cohort"
  resources :cohorts
  resources :courses
  resources :articles do
    resources :comments
  end
  devise_for :admins
  devise_for :students
  devise_for :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
