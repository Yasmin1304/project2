require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  should have_many(:camps)
  
  should validate_presence_of(:name)
  should validate_presence_of(:min_rating)
  should validate_presence_of(:max_rating)
  
  
  should "have a scope to alphabetize curriculums" do
    assert_equal ["Academo", "Baseto","IB","QIS","SEC"], Curriculum.alphabetical.map{|t| t.name}
  end

  should "have a scope to select only active curriculums" do
    assert_equal ["IB", "QIS", "Baseto"], Curriculum.active.alphabetical.map{|t| t.name}
  end
  
  should "have a scope to select only inactive curriculums" do
    assert_equal ["SEC", "Academo"], Curriculum.inactive.alphabetical.map{|t| t.name}
  end

end
