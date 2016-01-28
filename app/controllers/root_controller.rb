class RootController < ApplicationController
  def index
    @slides = Slide.active.order(:position).includes(:slide_image)
    @last_works = Work.all.order(:updated_at => :desc).take(6)
  end

  def robots
    render "robots/#{Rails.env}", :layout => false, :content_type => 'text/plain'
  end
end
