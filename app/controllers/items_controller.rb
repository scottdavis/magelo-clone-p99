class ItemsController < ApplicationController
  
  before_filter :authenticate_user!, :except => [:search, :show]
  before_filter :is_admin?, :except => [:search, :show]
  
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
        if params[:item_search].all? {|k, v| v.blank? }
          redirect_to items_search_path, :notice => "Please enter a query"
          return
        end
        @items = ItemSearch.new(params[:item_search]).items(params[:page])
        render :action => :index
      end
    end
  end
  
  def hide
    item = Item.find(params[:id])
    item.hide!
    redirect_to root_path, :notice => "Item hidden"
  end
  
  def edit
    find_item
    @page_title = "Editing: #{@item.name}"
  end
  
  def new
    @item = Item.new
  end
  
  def show
    if params[:name]
      @item = Item.find_by_name(params[:name])
    else
      @item = Item.find(params[:id])
    end
    if @item.hidden
      redirect_to root_path, :notice => "Item Does not exist"
      return
    end
    if params[:raw]
      render :partial => 'profiles/item', :locals => {:item => @item}
    else
      @page_title = "Details for #{@item.name}"
      render :action => :show
    end
  rescue
    redirect_to root_path, :notice => "Item Does not exist"
  end
  
  private 
  
  def find_item
    @item = Item.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, :notice => 'Item Not Found'
    return
  end
  
end
