module Contexts
  
  def create_camp_instructors
    @CampInstructor1= FactoryBot.create(:camp_instructor, camp_id: @camp1, instructor_id: @yasmin)
    @CampInstructor2= FactoryBot.create(:camp_instructor, camp_id: @camp2, instructor_id: @aya)
  end
  
  def destroy_camp_instructors
    @CampInstructor1.destroy
    @CampInstructor2.destroy
  end


end