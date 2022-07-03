Rails.application.routes.draw do
  get "bmi", to: "bmi#index"
  post "bmi/result", to: "bmi#result"
  get "/hello_world", to: "pages#hello"

  resources :posts
  resources :users
  # resources :posts, only: [:index, :show]       #only display
  # resource :posts                               #No route for id

  # resources :users do                      
  #   resources :posts
  # end

  # resources : users do
  #   resources :posts, only: [:index, :new, :create]
  # end
  # resources :posts, only: [:show, :edit, :update, :destroy]

  # resources :posts do
  #   collection do
  #     get :cancelled
  #   end
  # end

  # resources :orders do
  #   get :cancelled, on: :collection
  # end

  # #確認 2 號訂單
  # POST /orders/2/confirm
  # # 取消 3 號訂單
  # DELETE /orders/3/cancel

  # resources :orders do
  #   member do
  #     post :confirm
  #     delete :cancel
  #   end
  # end

  # resources :posts, path: "/admin/posts"

    # namespace :admin do
    #   resources :posts
    #   resources :users
    # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/", to: "welcome#index"
  # get '/users', to: redirect('/accounts')
  # get "/about", to: "pages#about"
  # get "/about", to: "products#about"
end
