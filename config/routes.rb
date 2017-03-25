Rails.application.routes.draw do

  get 'set_language/english'

  get 'set_language/ukraine'

  mount RailsAdmin::Engine => '//company/dashboard/admin', as: 'rails_admin'
  
  get "/:page" => "pages#show"
    
  root "pages#show", page: "home"

  scope '/company' do
    resources :vacancies
  end

  scope '/company/' do
    resources :novelties
  end

  scope '/company/' do
    resources :events
  end
    
end
