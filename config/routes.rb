Rails.application.routes.draw do
  get "/:page" => "pages#show"

  scope '/company' do
    resources :vacancies
  end

  root "pages#show", page: "home"
end
