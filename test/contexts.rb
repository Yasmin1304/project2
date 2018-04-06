require './test/sets/curriculum_contexts.rb'
require './test/sets/location_contexts.rb'
require './test/sets/camp_contexts.rb'
require './test/sets/instructor_contexts.rb'
require './test/sets/camp_instructor_contexts.rb'

module Contexts
  include Contexts::LocationContexts
  include Contexts::CurriculumContexts
  include Contexts::InstructorContexts
  include Contexts::CampContexts
  include Contexts::CampInstructorContexts
  
  def create_contexts
    create_currciculums
    create_locations
    create_instructors
    create_camps
    create_camp_instructors
  end
  
  def destroy_contexts
    destroy_currciculums
    destroy_locations
    destroy_instructors
    destroy_camps
    destroy_camp_instructors
  end
  
end



# module Contexts
#   def create_currciculums
#     @IB = FactoryBot.create(:curriculum, name: "IB", min_rating:1, max_rating:9, description:"Best program", active: false)
#     @SEC = FactoryBot.create(:curriculum, name: "SEC", min_rating:2, max_rating: 7, description: "Best programe", active: false)
#     @QIS = FactoryBot.create(:curriculum, name: "QIS", min_rating: 2, max_rating: 9, description: nil, active: true)
#     @Academo = FactoryBot.create(:curriculum, name: "Academo", min_rating: 4, max_rating: 10, description: nil, active: false)
#     @Baseto = FactoryBot.create(:curriculum, name: "Baseto", min_rating: 2, max_rating: 6, description: nil, active: true)
#   end
  
#   def destroy_currciculums
#     @IB.destroy
#     @SEC.destroy
#     @QIS.destroy
#     @Academo.destroy
#     @Baseto.destroy
#   end
  
#   def create_locations
#     @CMU = FactoryBot.create(:location, name: "CMU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
#     @VCU = FactoryBot.create(:location, name: "VCU", street_1: "Education City", zip: "12345", max_capacity: 7, active: false)
#     @TAMU = FactoryBot.create(:location, name: "TAMU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
#     @NUQ = FactoryBot.create(:location, name: "NUQ", street_1: "Education City", zip: "12345", max_capacity: 7, active: false)
#     @HBKU = FactoryBot.create(:location, name: "HBKU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
#   end
  
#   def destroy_locations
#     @dishes.destroy
#     @mow.destroy
#     @wood.destroy
#     @sweep.destroy
#     @shovel.destroy
#   end
  
#   def create_camp
#     @camp1 = FactoryBot.create(:camp, curriculum_id: @IB, location_id: @CMU, cost: 12.0, start_date: "12-12-2018", end_date: "12-12-2019", max_students: 8, active: true)
#     @camp2 = FactoryBot.create(:camp, curriculum_id: @SEC, location_id: @VCU, cost: 12.0, start_date: "12-12-2018", end_date: "12-12-2019", max_students: 8, active: true)
#   end
  
#   def destroy_camp
#     @camp1.destroy
#     @camp2.destroy
#   end
  
#   def instructor
#     @yasmin= FactoryBot.create(:instructor, first_name: "Yasmin", last_name: "Abdelaal", email: "yabdelaa@andrew.cmu.edu", phone: "1234567891", active: true)
#     @aya= FactoryBot.create(:instructor, first_name: "Aya", last_name: "Elsakka", email: "aelsakka@andrew.cmu.edu", phone: "1234567891", active: true)
#   end
  
#   def destroy_instructor
#     @yasmin.destroy
#     @aya.destroy
#   end
  
#   def create_camp_instructors
#     @CampInstructor1= FactoryBot.create(:camp_instructor, camp_id: @camp1, instructor_id: @yasmin)
#     @CampInstructor2= FactoryBot.create(:camp_instructor, camp_id: @camp2, instructor_id: @aya)
#   end
  
#   def destroy_camp_instructors
#     @CampInstructor1.destroy
#     @CampInstructor2.destroy
#   end
  


# end