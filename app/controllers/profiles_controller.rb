class ProfilesController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  before_filter :is_this_my_char, :only => [:update, :edit, :slots]
  
  def index
    @characters = current_user.characters
  end
  
  def edit
    
  end
  
  def slots
    return if request.get?
    params[:slots].each do |k, v|
      next if v.blank?
      @character.send("#{k}=", Item.find(v))
    end
    if @character.save
      redirect_to profile_path(@character.id)
      return  
    end
  end
  
  def create
    @character = Character.new params[:character]
    @character.ac = 0
    @character.user = current_user
    if @character.save
      redirect_to profile_path(@character.id)
      return
    end
    render :action => :new
  end
  
  def show
    @character = Character.with_slots.find(params[:id])
    render :action => :show, :layout => 'profile'
  end
  
  def new
    @character = Character.new
  end
  
  def update
    if @character.update_attributes(params[:character])
      redirect_to profile_path(@character.id), :notice => "Character Updated"
      return
    end
    render :action => :new
  end
  
  
  def is_this_my_char
    begin
      @character = Character.find(params[:id])
    rescue
      redirect_to root_path, :notice => "character not found"
      return false
    end
    unless current_user.id == @character.user_id
      redirect_to root_path, :notice => "This is not your character to edit"
      return false
    end
    true
  end
  
end
