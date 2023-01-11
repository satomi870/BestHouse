Rails.application.routes.draw do

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
    resource :user, only: [:show,:edit,:update]
    get'user/quit'=>  'users#quit',as: 'quit'
    patch 'user/out'=> 'users#out', as: 'out'
    get 'user/favorite' => 'users#favorite', as: 'favorite'
    post 'users/guest_login' => 'guest_sessions#create'
    get 'properties/map/:property_id'=>  'properties#map', as: 'map'
    get 'properties/search'=>  'properties#search', as: 'search'#違うURLで同じアクションに飛びたい時は二つかかず一つにルーティングをまとめる idはどうするかというとtophtmlの方で分岐させる
    get 'properties/search_keyword'=>  'properties#search_keyword', as: 'search_keyword'
    resources :properties,only:[:show] do
      resources :contacts,only:[:new, :create]
      resource :favorites, only: [:create, :destroy]
      resources :rules, only: [:create]
      resources :reviews, only: [:create]
      resources :questions, only: [:create]
    end
    resources :histories, only: [:index, :destroy]
    resources :notifications, only: [:index, :destroy]
    resources :questions do
      resources :comments, only: [:create]
    end
    resources :comments do
      resources :comment_comments, only: [:create]
    end
  end

  namespace :admin do
    resources :users,only:[:index,:show,:edit,:update]
    resources :reviews,only:[:index,:destroy]
    resources :questions,only:[:index,:destroy]
    resources :comments,only: [:destroy]
    resources :comment_comments,only: [:destroy]
    resources :contacts,only:[:index,:show]
    resources :rules,only:[:index,:destroy]
  end
end
