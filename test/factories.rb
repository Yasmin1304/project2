FactoryBot.define do
    factory :curriculum do
        name "International Baccalaureate"
        min_rating 10
        max_rating 2999
        description "Best program"
        active true
    end
    
    factory :instructor do
        first_name "Aya"
        last_name "Abdelaal"
        bio "IS student"
        email "yabdelaa@andrew.cmu.edu"
        phone "1234567891"
        active true
    end
    
    factory :location do
       name "Carnegie Mellon University"
       street_1 "Education city"
       street_2 "Gharaffa"
       city "Doha"
       state "DOH"
       zip "00974"
       max_capacity 8
       active true
    end
    
    factory :camp_instructor do
       association :camp_id
       association :instructor_id

    end
    
    factory :camp do
       association :curriculum_id
       association :location_id
       cost 100
       start_date 2.days.from_now.to_date
       end_date 7.days.from_now.to_date
       time_slot "am"
       max_students 200
       active false
        
    end
    
end