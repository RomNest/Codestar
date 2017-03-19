Rails.application.routes.draw do
  get "/:page" => "pages#show"

  resources :vacancies
  
  root "pages#show", page: "home"
end
