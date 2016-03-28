class ApplicationController < ActionController::Base
 
    
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_kayttaja
    @current_kayttaja ||= Kayttaja.find(session[:kayttaja_id]) if session[:kayttaja_id]
  end
  helper_method :current_kayttaja

  def authorize
    redirect_to '/login' unless current_kayttaja
  end    
    
    
    
    
    
    
    
    
    
    
    
    
    
#    # Prevent CSRF attacks by raising an exception.
#  # For APIs, you may want to use :null_session instead.
#  protect_from_forgery with: :exception
#    
#    private
#    
#    def current_user
#        @current_user ||= User.find(session[:user_id]) if session[:user_id]
#    end
#    
#    helper_method :current_user
end
