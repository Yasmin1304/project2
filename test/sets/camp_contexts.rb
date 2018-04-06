# require './test/sets/curriculum_contexts.rb'
# require './test/sets/location_contexts.rb'

module Contexts
  # include Contexts::CurriculumContexts
  # include Contexts::LocationContexts
  
  module CampContexts
    def create_camps
      @camp1 = FactoryBot.create(:camp, curriculum_id: @IB, location_id: @CMU, cost: 12.0, start_date: "13-4-2018", end_date: "1-10-2019", max_students: 80, active: true)
      @camp2 = FactoryBot.create(:camp, curriculum_id: @SEC, location_id: @VCU, cost: 12.0, start_date: "1-1-2016", end_date: "12-12-2019", max_students: 100, active: false)
    end
    
    def destroy_camps
      @camp1.destroy
      @camp2.destroy
    end
  end
end