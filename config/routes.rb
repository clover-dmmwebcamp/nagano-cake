Rails.application.routes.draw do
# 管理者用
  devise_for :admin, skip: [:registrations, :password], controllers: {
  sessions: "admin/sessions"
  }
# 顧客用
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

# 管理者側のルーティング
  namespace :admin do
    root to: 'homes#top'
    resources :products, except: [:destroy]
    resources :categories, only: [:index, :create, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    resources :orders, only: [:show, :update] do
      member do
        get "individual"
      end
    end
      resources :order_details, only: [:update]
    end

# 顧客側のルーティング
  scope module: :public do
    root to: 'homes#top'
    get 'about' => 'homes#about'
    get 'customers/mypage' => 'customers#show'
    get 'customers/infomation/edit' => 'customers#edit'
    patch 'customers/infomation' => 'customers#update'
    get 'customers/check' => 'customers#check'
    patch 'customers/withdraw' => 'customers#withdraw'
    resources :products, only: [:index, :show]
    resources :cart_products, only: [:index, :update, :destroy, :create] do
      collection do
        delete 'destroy_all'
      end
    end
    resources :orders, only: [:new, :create, :index, :show] do
      collection do
        post 'check'
        get 'complete'
      end
    end
    resources :addresses, except: [:new, :show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'search', to: 'searches#search'
end
