require 'test_helper'

class InstructorTest < ActiveSupport::TestCase
  should have_many(:camp_instructors)
  should have_many(:camps).through(:camp_instructors)
  
  should validate_presence_of(:first_name)
  should validate_presence_of(:last_name)
  should validate_presence_of(:email)
  
  
  context "Creating an instructor context" do
    setup do
      create_instructors
    end

    teardown do
      destroy_instructors
    end
    
    should "have name methods that list first_ and last_names combined" do
      assert_equal "Abdelaal,Yasmin", @yasmin.name
      assert_equal "Elsakka,Aya", @aya.name
    end

    
    should "have proper_name methods that list first_ and last_names combined" do
      assert_equal "Yasmin Abdelaal", @yasmin.proper_name
      assert_equal "Aya Elsakka", @aya.proper_name
    end
    
    should "have a scope to alphabetize names" do
      assert_equal ["Aya Elsakka", "Yasmin Abdelaal"], Instructor.alphabetical.map{|t| t.proper_name}, "#{Instructor.class}"
    end
  
    should "have a scope to select only active curriculums" do
      assert_equal ["Aya Elsakka", "Yasmin Abdelaal"], Instructor.active.alphabetical.map{|t| t.proper_name}
    end
    
    should "have a scope to select only inactive curriculums" do
      assert_equal [], Instructor.inactive.alphabetical.map{|t| t.proper_name}
    end
    
    should "have a scope to identify people who needs bio" do
      assert_equal ["Aya Elsakka"], Instructor.needs_bio.alphabetical.map{|t| t.proper_name}
    end
    
  end
  
  
end
