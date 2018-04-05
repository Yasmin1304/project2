module Contexts
  
  def create_locations
    @CMU = FactoryBot.create(:location, name: "CMU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
    @VCU = FactoryBot.create(:location, name: "VCU", street_1: "Education City", zip: "12345", max_capacity: 7, active: false)
    @TAMU = FactoryBot.create(:location, name: "TAMU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
    @NUQ = FactoryBot.create(:location, name: "NUQ", street_1: "Education City", zip: "12345", max_capacity: 7, active: false)
    @HBKU = FactoryBot.create(:location, name: "HBKU", street_1: "Education City", zip: "12345", max_capacity: 7, active: true)
  end
  
  def destroy_locations
    @dishes.destroy
    @mow.destroy
    @wood.destroy
    @sweep.destroy
    @shovel.destroy
  end
 
end