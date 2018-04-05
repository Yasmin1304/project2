require 'test_helper'

class CampTest < ActiveSupport::TestCase
  should have_many(:camp_instructors)
  should belong_to(:location)
  should belong_to(:curriculum)
  should have_many(:instructors).through(:camp_instructors)
  
  
  should validate_presence_of(:time_slot)
  should validate_presence_of(:curriculum_id)
  should validate_presence_of(:cost)
  should validate_presence_of(:start_date)
  should validate_presence_of(:end_date)

  #should validate_date(:start_date)
  #should validate_date(:end_date)
  
  
  
end