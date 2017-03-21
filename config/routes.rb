Rails.application.routes.draw do
  get "/:page" => "pages#show"

  scope '/company' do
    resources :vacancies
  end

  scope '/company/' do
    resources :novelties
  end

  root "pages#show", page: "home"
end
