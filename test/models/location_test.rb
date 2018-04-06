require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should have_many(:camps)
  
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name).case_insensitive
  should validate_presence_of(:street_1)
  should validate_presence_of(:max_capacity)
  should validate_presence_of(:zip)
  
  context "Within context" do 
    setup do 
      create_locations
    end
    
    teardown do 
      destroy_locations
    end
    
    should "have a scope to alphabetize locations" do
      assert_equal ["CMU", "HBKU", "NUQ", "TAMU", "VCU"], Location.alphabetical.map{|t| t.name}
    end
  
    should "have a scope to select only active curriculums" do
      assert_equal ["CMU", "HBKU", "TAMU"], Location.active.alphabetical.all.map{|t| t.name}
    end
    
    should "have a scope to select only inactive curriculums" do
      assert_equal ["NUQ", "VCU"], Location.inactive.alphabetical.map{|t| t.name}
    end

  end
end
