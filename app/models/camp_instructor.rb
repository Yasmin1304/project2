class CampInstructor < ApplicationRecord
    belongs_to :camp
    belongs_to :instructor
    
    validates :camp_id, numericality: { only_integer: true }, presence: true, numericality: {greater_than_or_equal_to: 0}, allow_nil: false, uniqueness: {case_sensitive: false }
    validates :instructor_id, numericality: { only_integer: true }, presence: true, numericality: {greater_than_or_equal_to: 0}, allow_nil: false, uniqueness: {case_sensitive: false }
    
    validates :camp_id, -> {where(self.camp.active == true)}
    validates :instructor_id, -> {where(self.instructor.active == true)}
    
    validates :instructor, uniqueness: {scope: [:camp]}
    
end
