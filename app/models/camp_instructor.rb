class CampInstructor < ApplicationRecord
    belongs_to :camp
    belongs_to :instructor
    
    validates :camp_id, numericality: { only_integer: true }, presence: true, numericality: {greater_than_or_equal_to: 0}, allow_nil: false, uniqueness: {case_sensitive: false }
    validates :instructor_id, numericality: { only_integer: true }, presence: true, numericality: {greater_than_or_equal_to: 0}, allow_nil: false, uniqueness: {case_sensitive: false }
    
    
end
