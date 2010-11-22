class ItemsController < ApplicationController
  
  def search
    @page_title = 'Search'
    respond_to do |format|
      format.json do
        @items = Item.select('name, id, magic').limit('30').where(["Lower(name) LIKE ?", "%#{params[:name].downcase}%"])
        render :json => @items.to_json(:only => [:name, :magic, :id])
      end
      format.html do
        return unless params[:item_search]
        expires_in 5.minutes, :public => true if Rails.env == 'production'
        @items = ItemSearch.new(params[:item_search]).items(params[:page])
        render :action => :index
      end
    end
  end
  
  
  def show
    if params[:name]
      @item = Item.find_by_name(params[:name])
    else
      @item = Item.find(params[:id])
    end
    if params[:raw]
      render :partial => 'profiles/item', :locals => {:item => @item}
    else
      @page_title = "Details for #{@item.name}"
      render :action => :show
    end
  rescue
    redirect_to root_path
  end
  
end
