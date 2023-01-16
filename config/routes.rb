Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/delete'

  # route "main#index"

  match 'about', to: "main#about", via: :get
  match 'hello', to: "main#hello", via: :get

  get 'main/index'

  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  get 'tasks/show'
  get 'tasks/delete'
 
end
