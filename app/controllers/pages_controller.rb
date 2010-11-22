require 'high_voltage'
class PagesController < HighVoltage::PagesController
  before_filter :set_cache
  
  private
  def set_cache
    #expires_in(3.hours) unless user_signed_in?
  end
  
end
