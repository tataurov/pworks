class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include Seo

  unless Rails.application.config.consider_all_requests_local
    rescue_from ActionController::RoutingError, with: -> { not_found }
    rescue_from ActiveRecord::RecordNotFound, with: -> { not_found  }
  end

  def not_found
    render file: 'public/404.html', status: :not_found, layout: false
  end

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end

  def page_settings
    return @page_settings if defined? @page_settings
    page_settings = PageSettings.where(controller: controller_name, action: action_name).first

    @page_settings = page_settings.present? ? page_settings : PageSettings.default_settings
    @page_settings.try(:header=, TextKeysReplacement.replace(@page_settings.try(:header), @seo_context))
    @page_settings.try(:static_content=, TextKeysReplacement.replace(@page_settings.try(:static_content), @seo_context))
    @page_settings
  end
  helper_method :page_settings

  def seo_data
    return @seo_data if defined? @seo_data
    @seo_data = {
      title: TextKeysReplacement.replace(page_settings.try(:title), @seo_context),
      description: TextKeysReplacement.replace(page_settings.try(:description), @seo_context),
      keywords: TextKeysReplacement.replace(page_settings.try(:keywords), @seo_context)
    }
    @seo_data
  end
  helper_method :seo_data

end
