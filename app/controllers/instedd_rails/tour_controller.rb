module InsteddRails
  class TourController < ApplicationController
    layout 'tour'
    helper_method :steps

    def show
      render (params[:page] ||= 'start')
    end

    def steps
      {}
    end

  end
end