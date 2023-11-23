Rails.application.routes.draw do
    resources :reverse_binaries, only: [:new, :create, :show]
    root 'reverse_binaries#new' 

end
