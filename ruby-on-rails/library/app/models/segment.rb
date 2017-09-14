class Segment < ApplicationRecord
    has_many :person_segments
    has_many :people, through: :person_segments 
end
