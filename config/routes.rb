Rails.application.routes.draw do

  devise_for :users
  root to: "home#index"

  
  get 'home/terms'

  get 'home/about'

  # get '/contacts' => 'feedback#index'
  # post '/contacts' => 'feedback#create'
  get '/' => 'home#index'
  get '/terms' => 'home#terms'
  get '/about' => 'home#about'

  resource :feedbacks, only: [:new, :create], path_names: { :new => ''}
  resources :articles do
    resources :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rails g controller feedbacks
  # vi app/controllers/feedbacks_controller.rb
  # rails g model Feedback email:string content:text
  # rake db:migrate

end
