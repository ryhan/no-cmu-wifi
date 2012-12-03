NoCmuWifi::Application.routes.draw do
  resources :reports, only: ['index', 'show', 'new', 'create']

  root to: 'reports#index'
end
