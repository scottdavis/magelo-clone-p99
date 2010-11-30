class SpellsController < ApplicationController
  
  def index
    
  end
  
  def show
    @spell = Spell.find(params[:id])
  rescue AcitveRecord::RecordNotFound
    redirect_to root_path, :notice => 'Spell not found'
  end
  
end
