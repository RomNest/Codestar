Rails.application.routes.draw do
  get "/:page" => "pages#show"

  get "/company/vacancies" => "vacancies#index"
  get "/company/vacancies/show/:id" => "vacancies#show"
  get "/company/vacancies/edit/:id" => "vacancies#edit"
  get "/company/vacancies/new" => "vacancies#new"


  root "pages#show", page: "home"
end
