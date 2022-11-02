Rails.application.routes.draw do




  namespace :user do
    get 'tags/index'
    get 'tags/show'
  end
  scope module: :user do

    get'properties/seach'=>  'properties#seach', as: 'seach'#違うURLで同じアクションに飛びたい時は二つかかず一つにルーティングをまとめる　idはどうするかというとtophtmlの方で分岐させる
    #get'properties/seach/:tag_id'=>  'properties#seach', as: 'property_seach'
    resources :properties,only:[:index, :show]
    resources :properties do
    get 'reviews/choose'=>'reviews#choose'
    resources :reviews
    resources :questions
    resources :answers

  end
  end
  namespace :admin do
    get 'homes/top'
    get 'homes/about'
  end
  scope module: :user do
    root to:'homes#top'
    get 'about'=>'homes#about'
    #get'homes/seach/:id'=>  'homes#seach', as: 'home_seach'
  end



  devise_for :users,skip: [:passwords],controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }

  devise_for :admin,skip: [:registrations, :passwords],controllers: {
  sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
