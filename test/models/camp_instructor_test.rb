require 'test_helper'

class CampInstructorTest < ActiveSupport::TestCase
    should belong_to(:camp)
    should belong_to(:instructor)
    
    should validate_presence_of(:camp_id)
    should validate_presence_of(:instructor_id)
    
    should validate_uniqueness_of(:instructor).scoped_to(:camp)
    
    
end
