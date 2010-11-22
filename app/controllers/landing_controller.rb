class LandingController < ApplicationController
  
  def index
    
  end

  def search
    @characters = Character.where(["Lower(name) Like ?", "%#{params[:name].downcase}%"])
  end
  
end
