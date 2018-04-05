require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  should have_many(:camps)
  
  should validate_presence_of(:name)
  should validate_uniqueness_of(:name).case_insensitive
  should validate_presence_of(:street_1)
  should validate_presence_of(:max_capacity)
  should validate_presence_of(:zip)

  
  
end
