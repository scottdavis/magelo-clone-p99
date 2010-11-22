require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  context "get home" do
    setup do 
      get :show, :id => 'home'
    end
    
    should render_template :home
    should respond_with :success
  end
end
