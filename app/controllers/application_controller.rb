class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_kayttaja

  before_filter :linkedin_user

  def current_kayttaja
    @current_kayttaja ||= Kayttaja.find_by_id(session[:kayttaja_id]) if session[:kayttaja_id] # || Kayttaja.where(session[:rtoken])
  end

  def linkedin_user
    @linkedin_user ||= LinkedinOauthSetting.find_by_user_id(session[:kayttaja_id]) # if session[:rtoken]
  end

  def authorize
    redirect_to '/login' unless current_kayttaja or linkedin_user
  end

end
