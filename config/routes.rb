Rails.application.routes.draw do

  namespace :admin do
    get 'homes/top'
    get 'homes/about'
  end
  scope module: :user do
    root to:'homes#top'
    get 'about'=>'homes#about'
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
