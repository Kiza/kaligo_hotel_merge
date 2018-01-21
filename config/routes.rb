Rails.application.routes.draw do

  get 'hotel/list'

  root to: 'check#live'

  get 'check/live'

  get 'check/health'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
