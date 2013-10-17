BlockadeSampleApp::Application.routes.draw do
  root to: 'posts#index'
  get '/dashboard' => 'pages#dashboard'
end
