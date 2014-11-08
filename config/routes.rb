Rails.application.routes.draw do
  root 'home#index'
  
  resource :sessions, only: [:new, :destroy, :create]
  resource :photos
  resources :users

  get 'sessions/new' => 'sessions#new', as: :new_session

  delete 'sessions' => 'session#destroy', as: :session

  get 'sessions/create' => 'sessions#create'


  get 'students/index', as: :students


  get 'students/new' => 'students#new', as: :new

  post 'students/new_students' => 'students#new_students', as: :new_students

  get 'students/show' => 'students#show', as: :show
  
  get 'students/:student/edit' => 'students#edit', as: :edit

  patch 'students/:student' => 'students#update'

  delete 'students/destroy' => 'students#destroy', as: :delete 

  
  get 'assignments/index' => 'assignments#index', as: :index_assignments

  get 'assignments/new' => 'assignments#new', as: :new_assign

  post 'assignments/new_assignments' => 'assignments#new_assignments', as: :new_assignments

  get 'assignments/show' => 'assignments#show', as: :show_assignments
  
  get 'assignments/edit' => 'assignments#edit', as: :edit_assignments

  patch 'assignments/update' => 'assignments#update', as: :update_assignments

  delete 'assignments/destroy' => 'assignments#destroy', as: :delete_assignments 
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
