PocketTally::Application.routes.draw do

  scope 'api' do
    resources :transactions
  end

  root to: 'main#index'

  match 'auth/twitter/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy'

end
