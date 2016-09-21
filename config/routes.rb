Rails.application.routes.draw do

  devise_for :users
  root to: "articles#index"

  
  # get 'home/terms'

 # get 'home/about'

  # get '/contacts' => 'feedback#index'
  # post '/contacts' => 'feedback#create'
  #get '/' => 'home#index'
  get '/terms' => 'home#terms', :as => 'terms_page'
  get '/about' => 'home#about', :as => 'about_page'

  resource :feedbacks, only: [:new, :create], path_names: { :new => ''}
  resources :articles do
    resources :comments, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # rails g controller feedbacks
  # vi app/controllers/feedbacks_controller.rb
  # rails g model Feedback email:string content:text
  # rake db:migrate


  # get ':name' => 'users#index', as 'user_page'
  # <%= link_to @user.username, user_page_path(@user.username) %>
  # into views:
  # def index
  #   if params[:name]
  #     @user = User.where(username: params[:name]).first
end
