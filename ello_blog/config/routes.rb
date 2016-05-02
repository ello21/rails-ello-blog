Rails.application.routes.draw do
  root 'home#index'
  # ARTICLE ROUTES
  get "articles"          => "articles#index", as: :articles
  get "articles/new"      => "articles#new", as: :new_article
  get "articles/:id/edit" => "articles#edit", as: :edit_article
  get "articles/:id"      => "articles#show", as: :article

  post "articles"         => "articles#create"
  put "articles/:id"      => "articles#update"
  patch "articles/:id"    => "articles#update"
  delete "articles/:id"   => "articles#destroy"

  # CATEGORY ROUTES
  get "categories/"         => "categories#index", as: :categories
  get "categories/new"      => "categories#new", as: :new_category
  get "categories/:id/edit" => "categories#edit", as: :edit_category
  get "categories/:id"      => "categories#show", as: :category

  post "categories/"        => "categories#create"
  put "categories/:id"      => "categories#update"
  patch "categories/:id"    => "categories#update"
  delete "categories/:id"   => "categories#destroy"

  # USER ROUTES
  get "users"          => "users#index", as: :users
  get "users/new"      => "users#new", as: :new_user
  get "users/:id/edit" => "users#edit", as: :edit_user
  get "users/:id"      => "users#show", as: :user

  post "users"         => "users#create"
  put "users/:id"      => "users#update"
  patch "users/:id"    => "users#update"
  delete "users/:id"   => "users#destroy"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
