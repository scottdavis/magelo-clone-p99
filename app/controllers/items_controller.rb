class ItemsController < ApplicationController
  
  def search
    @items = Item.select('name, id, magic').limit('30').where(["Lower(name) LIKE ?", "%#{params[:name].downcase}%"])
    render :json => @items.to_json(:only => [:name, :magic, :id])
  end
  
  
  def show
    if params[:name]
      @item = Item.find_by_name(params[:name])
    else
      @item = Item.find(params[:id])
    end
    render :action => :show, :layout => nil
  rescue
    render :text => nil
  end
end
