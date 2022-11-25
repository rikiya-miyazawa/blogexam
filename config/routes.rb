Rails.application.routes.draw do
  # get 'blog_exams/index'
  # get '/blog_exams', to: 'blog_exams#index'
  resources :blog_exams do
  collection do
    post :confirm
  end
  end
end