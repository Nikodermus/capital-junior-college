class Person < ApplicationRecord

    has_many :books
    has_many :books, through: :person_books, autosave: true

    has_many :person_segments
    has_many :segments, through: :person_segments 

    after_create :default_segment

    validates :email, confirmation: true
    validates :doc_type, :doc, :email, :email_confirmation, presence: true
    validates :doc_type, exclusion: { in: ["TI"]}
    validates :doc_type, format:{
        with: /\A[A-Z]{2}\z/
    }
    validates :doc_type, inclusion: { in: ["CC", "CE"]}
    validates :doc, length: { within: 6..12 }

    private

    def default_segment
        if self.segments.empty?
            self.segments.create(name: "base")
        end
    end
    
end
