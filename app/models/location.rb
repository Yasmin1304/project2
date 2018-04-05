class Location < ApplicationRecord
    has_many :camps
    
    scope :active, -> {where(active: true)}
    scope :inactive, -> {where(active: false)}
    scope :alphabetical, -> {order(:name)}
    
    validates :name,  uniqueness: {case_sensitive: false}, allow_blank: false, allow_nil: false, presence: true
    validates :zip, allow_blank: false, allow_nil: false, presence: true, format: {with: /\A\d{5}\z/}
    validates :street_1, allow_blank: false, allow_nil: false, presence: true
    validates :max_capacity, presence: true
    

    
end
