class ApplicationController < ActionController::Base
  include ActionView::Helpers::UrlHelper

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :authenticate_user, :current_user, :github

  before_filter :redirect_root_if_signed_in

  def authenticate_user
    redirect_to root_url unless current_user
  end

  private

  def redirect_root_if_signed_in
    redirect_to projects_url if current_user and current_page?(root_url)
  end
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def github
    @github ||= Github.new oauth_token: current_user.oauth_token if current_user
  end
end
