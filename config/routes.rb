Learningbydoing::Application.routes.draw do
  resources :books

  root "welcome#index"
end
