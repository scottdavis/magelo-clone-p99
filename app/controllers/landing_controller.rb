class LandingController < ApplicationController
  
  def index
    @characters = Character.limit('30').order('updated_at DESC')
  end

  def search
    @characters = Character.where(["Lower(name) Like ?", "%#{params[:name].downcase}%"])
  end
  
end
