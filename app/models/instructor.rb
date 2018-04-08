class Instructor < ApplicationRecord
    has_many :camp_instructors
    has_many :camps, through: :camp_instructors
    
    validates_presence_of(:first_name)
    validates_presence_of(:last_name)
    validates_presence_of(:email)
    

    validates :phone, format: {with: /\A\d{10}\z/}
    
    scope :active, -> {where(active: true)}
    scope :inactive, -> {where(active: false)}
    scope :alphabetical, -> {order(:first_name, :last_name) }
    scope :needs_bio, -> {where(bio: nil)}
    
    def name
        return last_name+","+first_name
    end
    
    def proper_name
       return first_name+" "+last_name
    end
    
    def for_camp
        array = []
        
    end
end
