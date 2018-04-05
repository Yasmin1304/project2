module Contexts
  def create_currciculums
    @IB = FactoryBot.create(:curriculum, name: "IB", min_rating:1, max_rating:9, description:"Best program", active: false)
    @SEC = FactoryBot.create(:curriculum, name: "SEC", min_rating:2, max_rating: 7, description: "Best programe", active: false)
    @QIS = FactoryBot.create(:curriculum, name: "QIS", min_rating: 2, max_rating: 9, description: nil, active: true)
    @Academo = FactoryBot.create(:curriculum, name: "Academo", min_rating: 4, max_rating: 10, description: nil, active: false)
    @Baseto = FactoryBot.create(:curriculum, name: "Baseto", min_rating: 2, max_rating: 6, description: nil, active: true)
  end
  
  def destroy_currciculums
    @IB.destroy
    @SEC.destroy
    @QIS.destroy
    @Academo.destroy
    @Baseto.destroy
  end
  
end