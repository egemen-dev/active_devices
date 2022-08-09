Rails.application.routes.draw do
  devise_for :users
  devise_for :devices, controllers: {
    registrations: "devices/registrations",
    sessions: "devices/sessions"
  }
  resources :users, only: [:show]
  get 'devices/all', to: 'devices#all_devices', as: :all_devices
  get 'devices/:id/new_device', to: 'devices#new_device', as: :new_device
  root "welcome#welcome"
end
