  # app/controllers/sessions2_controller.rb

class Sessions2Controller < ApplicationController

  def new
  end
    
  def create
    kayttaja = Kayttaja.find_by_email(params[:email])
    # If the kayttaja exists AND the password entered is correct.
    if kayttaja && kayttaja.authenticate(params[:password])
      # Save the kayttaja id inside the browser cookie. This is how we keep the kayttaja 
      # logged in when they navigate around our website.
      session[:kayttaja_id] = kayttaja.id
      redirect_to '/'
    else
    # If kayttaja's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  def destroy
    session[:kayttaja_id] = nil #|| session[:rtoken] = nil
    redirect_to '/'
  end
    
end