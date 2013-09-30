WebhooksApp::Application.routes.draw do
  resources :events, only: [:create, :index]
end
