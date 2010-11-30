class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_title
  
  
  def set_title
    @page_title = ''
  end
  
  def is_admin?
    unless current_user.admin?
      redirect_to root_path, :notice => "Access denied"
      return
    end
  end
  
end
