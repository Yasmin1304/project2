module Contexts
  def instructor
    @yasmin= FactoryBot.create(:instructor, first_name: "Yasmin", last_name: "Abdelaal", email: "yabdelaa@andrew.cmu.edu", phone: "1234567891", active: true)
    @aya= FactoryBot.create(:instructor, first_name: "Aya", last_name: "Elsakka", email: "aelsakka@andrew.cmu.edu", phone: "1234567891", active: true)
  end
  
  def destroy_instructor
    @yasmin.destroy
    @aya.destroy
  end

end