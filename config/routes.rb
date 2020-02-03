Rails.application.routes.draw do
  root to: 'pages#uofm_cs'
  get 'uofm-driven', to: 'pages#uofm_driven', as: 'uofm_driven'
  get 'uofm-cs', to: 'pages#uofm_cs', as: 'uofm_cs'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
