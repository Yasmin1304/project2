class Curriculum < ApplicationRecord
    has_many :camps
    #skip_before_action :verify_authenticity_token
    scope :active, -> { where(active: true)}
    scope :inactive, -> { where(active: false)}
    scope :alphabetical, -> {order(:name)}
    
    scope :for_rating, ->(rating) {where("rating > :min_rating" && "rating < :max_rating")} 
    

    validates :name, uniqueness: {case_sensitive: false }, allow_blank: false, presence: true
    validates :min_rating, numericality: {greater_than: 0}, allow_blank: false, presence: true
    validates :max_rating, numericality: {less_than: 3000}, allow_blank: false, presence: true
    
end
