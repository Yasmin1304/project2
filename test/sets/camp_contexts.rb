# require './test/sets/curriculum_contexts.rb'
# require './test/sets/location_contexts.rb'

module Contexts
  # include Contexts::CurriculumContexts
  # include Contexts::LocationContexts
  
  module CampContexts
    def create_camps
      @IB = FactoryBot.create(:curriculum, name: "IB", min_rating:1, max_rating:9, description:"Best program", active: false)
      @SEC = FactoryBot.create(:curriculum, name: "SEC", min_rating:2, max_rating: 7, description: "Best programe", active: false)
      @CMU = FactoryBot.create(:location, name: "CMU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
      @VCU = FactoryBot.create(:location, name: "VCU", street_1: "Education City", zip: "12345", max_capacity: 7, active: false)
      @camp1 = FactoryBot.create(:camp, curriculum: @IB, location: @CMU, cost: 12.0, start_date: Date.today, end_date: 2.days.from_now.to_date, max_students: 80, active: true, time_slot: 'am')
      @camp2 = FactoryBot.create(:camp, curriculum: @SEC, location: @VCU, cost: 12.0, start_date: 1.days.from_now.to_date, end_date: 5.days.from_now.to_date, max_students: 100, active: false, time_slot: 'pm')
    end
    
    def destroy_camps
      @camp1.destroy
      @camp2.destroy
    end
  end
end