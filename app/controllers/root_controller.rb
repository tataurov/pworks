class RootController < ApplicationController
  def index
    @slides = Slide.active.order(:position).includes(:slide_image)
  end
end
