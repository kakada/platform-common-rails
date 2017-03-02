module InsteddRails
  class TourController < ApplicationController
    layout 'tour'
    helper_method :steps

    def show
      render (params[:page].to_s ||= 'start')
    end

    def steps
      {}
    end

  end
end