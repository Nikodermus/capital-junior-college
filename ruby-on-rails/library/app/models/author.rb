class Author < ApplicationRecord
    KINDS_OF = %w(kid young adult)

    #Validations Methods
    before_validation :print_example_before
    before_validation :setup_name_if_email_exists
    before_validation :default_kind_of
    after_validation :print_example_after
    around_create :print_around_create

    #Relations
    has_many :person_books, counter_cache: :books_count

    #Validations
    validates :email, :name, presence: true
    validates :kind_of, inclusion: {in: KINDS_OF}

    private

    #Class Methods

    def print_around_create
        puts "Init around"
        yield
        puts "Finished around"
        
    end

    def default_kind_of
        if !KINDS_OF.include? self.kind_of 
            self.kind_of = KINDS_OF.last
        end
    end


    def setup_name_if_email_exists
        if self.name.blank?
            domain_name = self.email.scan(/(\w+)@\p{Alnum}*/).flatten
            self.name = domain_name.any? ? domain_name.first : nil
        end
    end


    def print_example_after
        puts "After validation"
    end
    def print_example_before
        puts "Before validation"
    end
end
