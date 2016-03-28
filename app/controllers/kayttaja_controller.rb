# app/controllers/kayttaja_controller.rb

class KayttajaController < ApplicationController

  def new
  end

  def create
    kayttaja = Kayttaja.new(kayttaja_params)
    if kayttaja.save
      session[:kayttaja_id] = kayttaja.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

private

  def kayttaja_params
    params.require(:kayttaja).permit(:name, :email, :password, :password_confirmation)
  end
end