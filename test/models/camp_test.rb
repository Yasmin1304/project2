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
  
  should validate_uniqueness_of(:start_date).scoped_to(:location, :time_slot)
  
  should validate_uniqueness_of(:location_id)
  ##should validate_date(:start_date)
  ##should validate_date(:end_date)

  context "Within context" do 
    setup do 
      create_camps
    end
    
    teardown do 
      destroy_camps
    end
      
    should "have a scope to order chronologically by start_date, end_date" do
      assert_equal ["IB", "SEC"], Camp.chronological.map{|c| c.curriculum.name}, "#{Camp.class}"
    end
      
      
    should "have a scope to alphabetize names" do
      assert_equal ["IB", "SEC"], Camp.alphabetical.map{|c| c.curriculum.name}, "#{Camp.class}"
    end
  
    should "have a scope to select only active camps" do
      assert_equal ["IB"], Camp.active.map{|t| t.curriculum.name}
    end
    
    should "have a scope to select only inactive camps" do
      assert_equal ["SEC"], Camp.inactive.map{|t| t.curriculum.name}
    end
    
    should "have a scope for today or future camps" do
      assert_equal 2, Camp.upcoming.size
    end
    
    should "have a scope for past camps" do
      assert_equal 0, Camp.past.size
    end
    
    should "have a method to return name of a curriculum" do
      assert_equal "IB", @camp1.curriculum.name
      assert_equal "SEC", @camp2.curriculum.name
    end
    
    should "have a scope returning morning slots" do 
      assert_equal ["IB"], Camp.morning.alphabetical.map{|t| t.curriculum.name}
    end
  
    should "have a scope returning afternoon slots" do
      assert_equal ["SEC"], Camp.afternoon.alphabetical.map{|t| t.curriculum.name}
    end
    
    should "have a scope for camps for a specified curriculum" do
      #puts for_curriculum(1)
      assert_equal 1, Camp.for_curriculum.size
    end
    
  end

end