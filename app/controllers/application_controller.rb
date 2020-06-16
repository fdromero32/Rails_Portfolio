class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  #Devise WhiteList
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  #Set Source
  before_action :set_source
  def set_source
    # Create a session and set it equal to the params that you set ( can be anything tbh )
    session[:source] = params[:q] if params[:q]
  end

  #Current User or Guest
  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end

  #Set Title
  before_action :set_page_defaults

  def set_page_defaults
    @page_title = "Danny Romero Portfolio Site"
    @seo_keywords = "Danny Romero portfolio"
  end

  before_action :set_copyright
  
  def set_copyright
    @copyright = DevcampViewTool::Renderer.copyright 'Danny Romero', 'All rights reserved.'
  end

  module DevcampViewTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b>, #{msg}".html_safe
      end 
    end
  end
  
end
