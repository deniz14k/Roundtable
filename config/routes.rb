Rails.application.routes.draw do
  resources :meetings do
    resources :items do
      member do
        patch :toggle_discussed
      end
    end
  end

  root "meetings#index"
end
