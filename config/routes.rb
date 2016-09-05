Rails.application.routes.draw do
  # get '/contacts' => 'feedback#index'
  # post '/contacts' => 'feedback#create'
  get '/' => 'home#index'

  resource :feedbacks, only: [:new, :create]
  resources :articles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rails g controller feedbacks
  # vi app/controllers/feedbacks_controller.rb
  # rails g model Feedback email:string content:text
  # rake db:migrate

end
