Rails.application.routes.draw do
  get 'project/index'
  get 'home/index'
  get 'test/index'

  devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login' }

  devise_scope :user do
		get 'sign_in2', to: 'devise/sessions#new'
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #เข้ามาหน้าแรก set route ให้เป็นหน้า  index
  authenticated :user do
		root to: 'home#index'
		#root to: 'test#index'
	end

	#หน้าหลังจาก logout
	unauthenticated :user do
		devise_scope :user do
			root to: 'devise/sessions#new' 
		end
	end

end
