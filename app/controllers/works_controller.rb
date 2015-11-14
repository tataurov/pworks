class WorksController < ApplicationController
  def index
    works
  end

  private

  def works
    return @works if defined? @works
    @works = Work.all
  end
end
