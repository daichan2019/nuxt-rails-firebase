Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :microposts, only: %i[index create show update destroy]
      namespace 'auth' do
        post 'users' => 'users#create'
      end
    end
  end
end
