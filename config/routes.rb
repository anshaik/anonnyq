Rails.application.routes.draw do

  get '/contact', to: 'contacts#new', as: 'contact_us'
  resources :contacts, only: [:create]
  resources :email_subscribers, only: [:create]

  get '/apply', to: 'profiles#new', as: 'apply'
  get '/settings', to: 'profiles#edit', as: 'settings'
  resources :profiles, only: [:create, :update]

  get '/lessons', to: 'dashboard#lessons', as: 'lessons'
  get '/lesson', to: 'dashboard#lesson_detail', as: 'lesson_detail'
  get '/blog', to: 'dashboard#blog', as: 'blog'
  get '/blog-post', to: 'dashboard#blog_post', as: 'blog_post'
  get '/pricing', to: 'dashboard#pricing', as: 'pricing'
  get '/schedule', to: 'dashboard#schedule', as: 'schedule'

  get '/agenda', to: 'dashboard#agenda', as: 'agenda'
  get '/timeline', to: 'dashboard#timeline', as: 'timeline'

  resources :courses, only: [:index,:show] do
    resources :sections, only: [:show]
  end

  resources :lessons, only: [:show]

  namespace :student do
    get '/', to: 'dashboard#index', as: 'student_index'
    get '/dashboard', to: 'dashboard#index', as: 'dashboard'    
  end
  namespace :teacher do
    get '/', to: 'courses#index'
      get '/dashboard', to: 'dashboard#index', as: 'dashboard'    
      resources :courses do 
        resources :sections, only: [:show, :new, :create, :edit, :update] do
          resources :lessons, only: [:new, :create, :edit, :update]
        end
      end
  end
  get '/about', to: 'pages#about', as: 'about'

  devise_for :users
  root to: 'pages#index'
end
