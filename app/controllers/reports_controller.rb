class ReportsController < ApplicationController
  before_filter :authenticate_user!
  
  before_filter :is_admin?, :except => :non_classic

  
  def non_classic
    item = Item.find(params[:id])
    Report.create!(:problemable => item, :description => "Not Classic", :user => current_user)
    redirect_to item_path(params[:id]), :notice => 'Item has been reported, thanks for helping out!'
  end
  
  def index
    @reports = Report.not_fixed.paginate(:per_page => 30, :page => params[:page])
  end
  
  def new
    unless params[:type]
      redirect_to root_path, :notice => "No type to report on"
      return
    end
    @page_title = "#{params[:type].humanize} Report"
    @report = Report.new
    case params[:type].downcase
      when 'item'
        @report.problemable = Item.find(params[:id])
      when 'spell'
        @report.problemable = Spell.find(params[:id])
      when 'profile'
        @report.problemable = Profile.find(params[:id])
    end
  end
  
  def update
    @report = Report.find(params[:id])
    if @report.update_attributes(params[:report])
      if params[:commit] == "Close Report"
        @report.fixer = current_user.id
        @report.fixed = true
        @report.save
      end
      redirect_to reports_path, :notice => "Report Updated"
      return
    end
    render :action => :show
  end
  
  def destroy
    report = Report.find(params[:id])
    report.hide!
    redirect_to reports_path, :notice => "Report has been closed"
  end
  
  def show
    @report = Report.find(params[:id])
  end
  
  def create
    @report = Report.new(params[:report])
    @report.user = current_user
    if @report.save
      redirect_to root_path, :notice => "Thanks for reporting!"
      return
    end
    render :action => :new
  end

  
end
