Rails.application.routes.draw do



  namespace :admin do
    get 'rules/index'
  end
  namespace :admin do
    get 'contacts/show'
    get 'contacts/index'
  end
  namespace :user do
    get 'contacts/new'
  end
  devise_for :admin,skip: [:registrations, :passwords],controllers: {
    sessions: "admin/sessions"
  }
  devise_for :users,skip: [:passwords],controllers: {
    registrations: "user/registrations",
    sessions: 'user/sessions'
  }

  scope module: :user do
    root to:'homes#top'
    get 'about'=>'homes#about'
    resource :user
    get'users/quit'=>  'users#quit',as: 'quit'
    patch 'users/out'=> 'users#out', as: 'out'
    get 'users/review' => 'users#review', as: 'review'
    get 'users/question' => 'users#question', as: 'question'
    get 'users/comment' => 'users#comment', as: 'comment'
    get 'users/comment_comment' => 'users#comment_comment', as: 'comment_comment'
    get 'users/favorite' => 'users#favorite', as: 'favorite'
    get'properties/map/:property_id'=>  'properties#map', as: 'map'
    get'properties/search'=>  'properties#search', as: 'search'#違うURLで同じアクションに飛びたい時は二つかかず一つにルーティングをまとめる　idはどうするかというとtophtmlの方で分岐させる
    get'properties/search_keyword'=>  'properties#search_keyword', as: 'search_keyword'

    #get'properties/seach/:tag_id'=>  'properties#seach', as: 'property_seach'
    resources :histories
    resources :properties,only:[:index, :show]
    resources :notifications, only: [:index, :destroy]
    resources :properties do
    resources :contacts
    get 'reviews/choose'=>'reviews#choose'
    resource :favorites, only: [:create, :destroy]
    resources :reviews
    resources :questions
    resources :rules, only: [:create]
    end

    resources :questions do
    resources :answers, only: [:create,:show]
    post '/comments/:comment_id' => 'comments#reply', as: 'reply'
    resources :comments, only: [:create]
    end
    resources :comments do
    resources :comment_comments

    end
  end
  namespace :admin do
    get 'homes/top'
    get 'homes/about'
    resources :users
    resources :reviews,onry:[:index,:destroy]
    resources :questions,onry:[:index,:destroy]
    resources :comments,only: [:destroy]
    resources :comment_comments,only: [:destroy]
    resources :contacts
    resources :rules,only:[:index,:destroy]


  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end