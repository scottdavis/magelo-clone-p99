class ReportsController < ApplicationController
  before_filter :authenticate_user!
  
  def non_classic
    Report.create!(:problem_object_type => 'Item', :problem_id => params[:id], :description => "Not Classic", :user => current_user)
    redirect_to item_path(params[:id]), :notice => 'Item has been reported, thanks for helping out!'
  end
  
end
