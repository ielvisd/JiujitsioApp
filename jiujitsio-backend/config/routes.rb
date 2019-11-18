Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    resources :examples
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
