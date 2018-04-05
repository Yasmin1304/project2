require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
    should have_many(:camp_instructors)
    should have_many(:camps).through(:camp_instructors)
    
    should validate_presence_of(:first_name)
    should validate_presence_of(:last_name)
    should validate_presence_of(:email)
    
    should "have name methods that list first_ and last_names combined" do
      assert_equal "Yasmin,Abdelaal", @yasmin.name
      assert_equal "Aya,Elsakka", @aya.name
    end
    
    should "have proper_name methods that list first_ and last_names combined" do
      assert_equal "Yasmin Abdelaal", @yasmin.proper_name
      assert_equal "Aya Elsakka", @aya.proper_name
    end
end
