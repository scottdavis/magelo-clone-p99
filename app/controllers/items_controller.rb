class ItemsController < ApplicationController
  
  def search
    @items = Item.select('name').limit('30').where(["Lower(name) LIKE ?", "%#{params[:name].downcase}%"])
    render :json => @items.to_json(:only => :name)
  end
  
end
