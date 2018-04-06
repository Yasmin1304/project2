module Contexts
  module CampInstructorContexts
    def create_camp_instructors
      @CampInstructor1= FactoryBot.create(:camp_instructor, camp_id: 1, instructor_id: 1)
      @CampInstructor2= FactoryBot.create(:camp_instructor, camp_id: 2, instructor_id: 2)
    end
    
    def destroy_camp_instructors
      @CampInstructor1.destroy
      @CampInstructor2.destroy
    end

  end
end