class WorksController < ApplicationController
  def index
    works
  end

  def show
    work
    set_seo_context
  end

  private

  def works
    return @works if defined? @works
    @works = Work.all
  end

  def work
    return @work if defined? @work
    @work = Work.find_by_id_with_slug(params[:id])
  end

  def set_seo_context
    @seo_context = {
      name: work.title,
      material: work.material.title,
      material_genitive: work.material.name_genitive,
      category: work.category.title
    }
  end
end
