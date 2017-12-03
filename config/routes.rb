Rails.application.routes.draw do

  get 'gitapi/codechef'

  root 'gitapi#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
