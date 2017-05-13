Rails.application.routes.draw do
  resources :featured_items
  get 'page/home'

  get 'page/about'

  get 'page/contact'

  get 'page/pawn'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\

end
