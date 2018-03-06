Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # show all tasks
  get    "tasks",          to: "tasks#index"

  # create a new instance of tasks and resgister it
  post   "tasks",          to: "tasks#create"
  get    "tasks/new",      to: "tasks#new"

  # edit a task and update
  get    "tasks/:id/edit", to: "tasks#edit", as: 'edit_task'
  # show one
  get    "tasks/:id",      to: "tasks#show", as: 'task'

  patch  "tasks/:id",      to: "tasks#update"

  # delete a task
  delete "tasks/:id",      to: "tasks#destroy"
end
