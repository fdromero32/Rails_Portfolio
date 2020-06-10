class ApplicationController < ActionController::Base
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

  #Current User
  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end

  #Set Title
  before_action :set_page_defaults

  def set_page_defaults
    @page_title = "My Portfolio Website"
    @seo_keywords = "Danny Romero portfolio"
  end

end
