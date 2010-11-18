require 'test_helper'
require 'stats'
class StatsTest < ActiveSupport::TestCase
  context "Level 1 wizard hp" do
    setup do
      @hp = calc_base_hp(1, 'Wizard', 85)
    end
    should "be 20" do
      assert_equal 20, @hp
    end
  end
  
  context "Level 50 mage" do
    setup do
      @hp = calc_base_hp(50, 'Magician', 80)
    end
    should "be 765" do
      assert_equal 765, @hp
    end
  end
  
  
  context "get ac mod for 98 agi" do
    setup do
      @ac =  get_acmod(50, 98)
    end
    should "be n" do
      assert_equal 44, @ac
    end
  end
  
  
end
