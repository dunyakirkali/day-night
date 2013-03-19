DayAndNight::Application.routes.draw do
  get "home/index"
  get "home/poll"
  root :to => 'home#index'
end
