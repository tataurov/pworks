module Api
  class WorksController < ApplicationController
    def index
      render json: Work.all.includes(:work_image).to_json(methods: [:big_image_url, :category, :material])
    end
  end
end