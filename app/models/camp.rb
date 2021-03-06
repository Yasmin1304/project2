class Camp < ApplicationRecord
    belongs_to :curriculum
    has_many :camp_instructors
    belongs_to :location
    has_many :instructors, through: :camp_instructors
    
    validates_presence_of(:time_slot)
    validates_presence_of(:cost)
    validates_presence_of(:start_date)
    validates_presence_of(:end_date)

    validates :curriculum_id, allow_nil: false, presence: true
    validates :location_id, allow_nil: false, uniqueness: {case_sensitive: false}, presence: true,numericality: {greater_than_or_equal_to: 0}
    
    validates_date :start_date
    validates_date :end_date
    
    #validates :time_slot, format: { with: /^(a|p)m$/ }
    
    validates :start_date, uniqueness: {scope: [:location, :time_slot]}
    
    #validates :max_students, -> {where("max_students < ?", self.Location.max_capacity)}
    
    #returns all camps for a specified curriculum (parameter: curriculum_id)
    scope :for_curriculum, -> curriculum_id {where("curriculum_id =?", curriculum_id)} 

    
    #validates :start_date, -> {where('start_date >= ?', Date.today)}
    #validates :end_date, -> {where('end_date >= ?', :start_date)}
    
    
    scope :active, -> { where(active: true)}
    scope :inactive, -> { where(active: false)}
    scope :alphabetical, -> {joins(:curriculum).order('curriculums.name')}
    scope :chronological, -> {order(:start_date, :end_date)}
    scope :upcoming, -> {where('start_date >= ?', Date.today)}
    scope :past, -> {where('end_date < ?', Date.today)}
    
    scope :for_curriculum, -> {where(curriculum_id: :curriculum_id)}
    
    scope :morning, -> {where(time_slot: 'am')}
    scope :afternoon, -> {where(time_slot: 'pm')}
    
    
    
    
    def name
        Curriculum.name
    end
end
