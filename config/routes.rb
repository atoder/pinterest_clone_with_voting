Rails.application.routes.draw do
  devise_for :users
  root 'pins#index'
  resources :pins do
    member do
      put "like", to: "pins#upvote"
      put "dislike", to: "pins#downvote"
    end
  end
end
