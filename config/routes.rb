Rails.application.routes.draw do
<<<<<<< HEAD
  get 'courses/index' => 'courses#index', as: :courses
  get 'courses/show' => 'courses#show', as: :show_course
  get 'course/indexstudent' => 'courses#indexstudent', as: :index_student
  get 'courses/new' => 'courses#new', as: :new_course
  get 'courses/newstudentcourse' => 'courses#newstudentcourse', as: :new_student_course
  post 'courses/new_students' => 'courses#new_students', as: :new_student2
  post 'courses/create' => 'courses#create', as: :create_course
  delete 'courses/destroy' => 'courses#destory', as: :delete_course

  root 'home#index', as: :home
=======

  root 'home#index'
>>>>>>> 726cec383f2eccbcd3d71951e13fae0430b955ed
  
  resource :sessions, only: [:new, :destroy, :create]
  resource :photos
  resources :users

  get 'sessions/new' => 'sessions#new', as: :new_session

  delete 'sessions' => 'session#destroy', as: :session

  get 'sessions/create' => 'sessions#create'


  get 'students/index' => 'students#index', as: :students


  get 'students/new' => 'students#new', as: :new

  post 'students/new_students' => 'students#new_students', as: :new_students

  get 'students/show' => 'students#show', as: :show
  
  post 'students/new_assignments' => 'students#new_assignments', as: :new_assignments
  
  get 'students/edit' => 'students#edit', as: :edit

  patch 'students/update' => 'students#update'

  delete 'students/destroy' => 'students#destroy', as: :delete 



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:student' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:student/purchase' => 'catalog#purchase', as: :purchase

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
