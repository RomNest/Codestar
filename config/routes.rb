Rails.application.routes.draw do
  mount RailsAdmin::Engine => '//company/dashboard/admin', as: 'rails_admin'
  get "/:page" => "pages#show"

  scope '/company' do
    resources :vacancies
  end

  scope '/company/' do
    resources :novelties
  end

  scope '/company/' do
    resources :events
  end

  root "pages#show", page: "home"
end
