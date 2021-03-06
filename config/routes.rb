Rails.application.routes.draw do
  root 'users#new'

  resources :users


  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'

  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  get 'instructors/index'
  get 'instructors/new'
  get 'instructors/create'
  get 'instructors/edit'
  get 'instructors/update'
  get 'instructors/destroy'

  get 'home/index'
  
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  get 'courses/create'
  get 'courses/edit'
  get 'courses/update'
  get 'courses/destroy'
  get 'cohorts/index'
  get 'cohorts/show'
  get 'cohorts/new'
  get 'cohorts/create'
  get 'cohorts/edit'
  get 'cohorts/update'
  get 'cohorts/destroy'
  get 'assigns/new'
  get 'assigns/create'
  get 'assigns/edit'
  get 'assigns/update'
  get 'assigns/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
