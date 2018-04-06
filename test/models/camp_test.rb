require 'test_helper'

class CampTest < ActiveSupport::TestCase
  should belong_to(:curriculum)
  should have_many(:camp_instructors)
  should belong_to(:location)
  should have_many(:instructors).through(:camp_instructors)
  
  
  should validate_presence_of(:time_slot)
  should validate_presence_of(:curriculum_id)
  should validate_presence_of(:cost)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)


context "Within context" do 
  setup do 
    create_camps
  end
  
  teardown do 
    destroy_camps
  end
    
  should "have a scope to order chronologically by start_date, end_date" do
    assert_equal ["SEC", "IB"], Camp.chronological.map{|c| c.curriculum.name}
  end
    
    
  should "have a scope to alphabetize names" do
    assert_equal ["IB", "SEC"], Camp.alphabetical.map{|t| t.curriculum.name}
  end

  should "have a scope to select only active camps" do
    assert_equal ["IB"], Camp.active.alphabetical.map{|t| t.curriculum.name}
  end
  
  should "have a scope to select only inactive camps" do
    assert_equal ["SEC"], Camp.inactive.alphabetical.map{|t| t.curriculum.name}
  end
  
  should "have a scope for today or future camps" do
    assert_equal 1, Camp.upcoming.size
  end
  
  should "have a scope for past camps" do
    assert_equal 1, Camp.past.size
  end
  
  should "have a method to return name of a curriculum" do
    assert_equal "IB", @camp1.name
    assert_equal "SEC", @camp2.name
  end
  #should validate_date(:start_date)
  #should validate_date(:end_date)
  
end
  
end