Rails.application.routes.draw do

  devise_for :users

  root 'recommendations#index'
  # Routes for the Account resource:
  # CREATE
  get "/accounts/new", :controller => "accounts", :action => "new"
  post "/create_account", :controller => "accounts", :action => "create"

  # READ
  get "/accounts", :controller => "accounts", :action => "index"
  get "/accounts/:id", :controller => "accounts", :action => "show"

  # UPDATE
  get "/accounts/:id/edit", :controller => "accounts", :action => "edit"
  post "/update_account/:id", :controller => "accounts", :action => "update"

  # DELETE
  get "/delete_account/:id", :controller => "accounts", :action => "destroy"
  #------------------------------

  # Routes for the session resource:
  # CREATE
  get "/sessions/new", :controller => "sessions", :action => "new"
  post "/create_session", :controller => "sessions", :action => "create"


  # Routes for the Entree resource:
  # CREATE
  get "/entrees/new", :controller => "entrees", :action => "new"
  post "/create_entree", :controller => "entrees", :action => "create"

  # READ
  get "/entrees", :controller => "entrees", :action => "index"
  get "/entrees/:id", :controller => "entrees", :action => "show"

  # UPDATE
  get "/entrees/:id/edit", :controller => "entrees", :action => "edit"
  post "/update_entree/:id", :controller => "entrees", :action => "update"

  # DELETE
  get "/delete_entree/:id", :controller => "entrees", :action => "destroy"
  #------------------------------

  # Routes for the Dessert resource:
  # CREATE
  get "/desserts/new", :controller => "desserts", :action => "new"
  post "/create_dessert", :controller => "desserts", :action => "create"

  # READ
  get "/desserts", :controller => "desserts", :action => "index"
  get "/desserts/:id", :controller => "desserts", :action => "show"

  # UPDATE
  get "/desserts/:id/edit", :controller => "desserts", :action => "edit"
  post "/update_dessert/:id", :controller => "desserts", :action => "update"

  # DELETE
  get "/delete_dessert/:id", :controller => "desserts", :action => "destroy"
  #------------------------------

  get "/", :controller => "appetizers", :action => "index"

  # Routes for the Appetizer resource:
  # CREATE
  get "/appetizers/new", :controller => "appetizers", :action => "new"
  post "/create_appetizer", :controller => "appetizers", :action => "create"

  # READ
  get "/appetizers", :controller => "appetizers", :action => "index"
  get "/appetizers/:id", :controller => "appetizers", :action => "show"

  # UPDATE
  get "/appetizers/:id/edit", :controller => "appetizers", :action => "edit"
  post "/update_appetizer/:id", :controller => "appetizers", :action => "update"

  # DELETE
  get "/delete_appetizer/:id", :controller => "appetizers", :action => "destroy"
  #------------------------------

  # Routes for the Recommendation resource:
  # CREATE
  get "/recommendations/new", :controller => "recommendations", :action => "new"
  post "/create_recommendation", :controller => "recommendations", :action => "create"

  # READ
  get "/recommendations", :controller => "recommendations", :action => "index"
  get "/recommendations/:id", :controller => "recommendations", :action => "show"

  # UPDATE
  get "/recommendations/:id/edit", :controller => "recommendations", :action => "edit"
  post "/update_recommendation/:id", :controller => "recommendations", :action => "update"

  # DELETE
  get "/delete_recommendation/:id", :controller => "recommendations", :action => "destroy"
  #------------------------------





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
