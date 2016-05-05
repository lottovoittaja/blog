Rails.application.routes.draw do

    
  devise_for :users
 # This route sends requests to our naked url to the *cool* action in the *gif* controller.
  # root to: 'welcome#index'
    
    root :to => 'welcome#index'
    resources :linkedin
    get '/linkedin_profile' => "linkedin#linkedin_profile"
    get '/oauth_account' => "linkedin#oauth_account"
    get '/linkedin_oauth_url' => 'linkedin#generate_linkedin_oauth_url'
    

 # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions2#new'
  post '/login' => 'sessions2#create'
  get '/logout' => 'sessions2#destroy'

  get '/signup' => 'kayttaja#new'
  post '/kayttaja' => 'kayttaja#create'
    
    
    
    
    #  root 'home#index'
#
#  get 'profile' => 'home#profile'
#
#    get 'auth/:provider/callback', to: "sessions#create"
#    
#    delete 'sign_out', to: "sessions#destroy", as: 'sign_out'
 ####### get 'welcome/index'
    
    
    
    

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

     # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :articles do
    resources :comments
        
   
        
end
end
    
  # You can have the root of your site routed with "root"
 # root 'welcome#index'
    

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

 

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

#
#Webapp::Application.routes.draw do
  
#  get 'home/index'
#
#  get 'home/profile'

#     match '/auth/:provider/callback', to: 'sessions#create'
#     root :to => 'application#home'
#   end