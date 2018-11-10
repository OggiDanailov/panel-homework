Rails.application.routes.draw do
 

  devise_for :admins
  root "welcome#index"

  get "/instructors/:id" => "instructors#show", :as => "instructor"
  resources :cohorts
  devise_for :students
  devise_for :instructors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
