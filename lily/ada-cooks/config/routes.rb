Rails.application.routes.draw do
    get "/",                          to: "recipes#index",              as: :root
    get  "/ingredients",              to: "ingredients#index",         as: :ingredients
    get  "/ingredients/show/:id",     to: "ingredients#show",          as: :show_ingredient
    get "/ingredients/edit/:id",      to: "ingredients#edit",          as: :edit_ingredient
    post "/ingredients/edit/:id",     to: "ingredients#update",        as: :update_ingredient
    post "/ingredients/new",          to: "ingredients#create",        as: :create_ingredient
    get  "/ingredients/new",          to: "ingredients#new",           as: :new_ingredient
    get "/ingredients/destroy/:id",   to: "ingredients#destroy",       as: :destroy_ingredient_path
    get  "/recipes/:id/newingredient",              to: "ingredients#create_recipe_ingredient",    as: :make_recipe_ingredient
    delete "/recipes/:id/deleteingredient",   to: "ingredients#destroy_recipe_ingredient",    as: :delete_recipe_ingredient

    get  "/recipes",                  to: "recipes#index",             as: :recipes
    get  "/recipes/show/:id",         to: "recipes#show",              as: :show_recipe
    get "/recipes/edit/:id",          to: "recipes#edit",              as: :edit_recipe
    post "/recipes/edit/:id",         to: "recipes#update",            as: :update_recipe
    post "/recipes/new",              to: "recipes#create",            as: :create_recipe
    get  "/recipes/new",              to: "recipes#new",               as: :new_recipe
    get "/recipes/destroy/:id",          to: "recipes#destroy",           as: :destroy_recipe_path


get  "/recipe_ingredients",                  to: "recipe_ingredients#index",             as: :recipe_ingredients
get  "/recipe_ingredients/show/:id",         to: "recipe_ingredients#show",              as: :show_recipe_ingredient
get "/recipe_ingredients/edit/:id",          to: "recipe_ingredients#edit",              as: :edit_recipe_ingredient
post "/recipe_ingredients/edit/:id",         to: "recipe_ingredients#update",            as: :update_recipe_ingredient
post "/recipe_ingredients/new",              to: "recipe_ingredients#create",            as: :create_recipe_ingredient
get  "/recipe_ingredients/new",              to: "recipe_ingredients#new",               as: :new_recipe_ingredient
get "/recipe_ingredients/destroy/:id",          to: "recipe_ingredients#destroy",           as: :destroy_recipe_ingredient_path

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
