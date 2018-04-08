class Curriculum < ApplicationRecord
    has_many :camps
    #skip_before_action :verify_authenticity_token
    scope :active, -> { where(active: true)}
    scope :inactive, -> { where(active: false)}
    scope :alphabetical, -> {order(:name)}
    
    scope :for_rating, ->(rating) {where("rating >= ? && rating < ?", :min_rating, :max_rating)}

    validates :name, uniqueness: {case_sensitive: false }, allow_blank: false, presence: true
    validates_numericality_of :min_rating
    validates_numericality_of :max_rating
    validates :min_rating, numericality: {greater_than: 0}, allow_blank: false, presence: true
    validates :max_rating, numericality: {less_than: 3000}, allow_blank: false, presence: true
    
end
