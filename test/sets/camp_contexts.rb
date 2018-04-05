module Contexts
  
  def create_camp
    @camp1 = FactoryBot.create(:camp, curriculum_id: @IB, location_id: @CMU, cost: 12.0, start_date: "12-12-2018", end_date: "12-12-2019", max_students: 8, active: true)
    @camp2 = FactoryBot.create(:camp, curriculum_id: @SEC, location_id: @VCU, cost: 12.0, start_date: "12-12-2018", end_date: "12-12-2019", max_students: 8, active: true)
  end
  
  def destroy_camp
    @camp1.destroy
    @camp2.destroy
  end
end