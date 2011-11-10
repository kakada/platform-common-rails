module ActionDispatch::Routing
  class Mapper
    
    def with_tour
      get 'tour(/:page)', :action => :show, :controller => :tour, :as => 'tour'
    end
  end
end
