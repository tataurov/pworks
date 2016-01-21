class RootController < ApplicationController
  def index
    @slides = Slide.active.order(:position).includes(:slide_image)
  end

  def robots
    render "robots/#{Rails.env}", :layout => false, :content_type => 'text/plain'
  end
end
