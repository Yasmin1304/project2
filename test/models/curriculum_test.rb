require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  should have_many(:camps)
  
  should validate_presence_of(:name)
  should validate_presence_of(:min_rating)
  should validate_presence_of(:max_rating)
  
  should validate_uniqueness_of(:name).case_insensitive
  
  should validate_numericality_of(:min_rating)
  should validate_numericality_of(:max_rating)
  
  context "Within context" do 
    setup do 
      create_currciculums
    end
    
    teardown do 
      destroy_currciculums
    end
    
    should "have a scope to alphabetize curriculums" do
      assert_equal ["Academo", "Baseto","IB","QIS","SEC"], Curriculum.alphabetical.map{|t| t.name}, "#{Curriculum.class}"
    end
  
    should "have a scope to select only active curriculums" do
      assert_equal ["Baseto", "QIS"], Curriculum.active.alphabetical.all.map{|t| t.name}
    end
    
    should "have a scope to select only inactive curriculums" do
      assert_equal ["Academo", "IB", "SEC"], Curriculum.inactive.alphabetical.map{|t| t.name}
    end

  end
end
