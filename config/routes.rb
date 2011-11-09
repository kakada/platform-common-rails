Rails.application.routes.draw do

  get 'tour(/:page)', :action => :show, :controller => :tour, :as => 'tour'
end
