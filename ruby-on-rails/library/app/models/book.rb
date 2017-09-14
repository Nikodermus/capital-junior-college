class Book < ApplicationRecord
    after_initialize do
        puts "Process initialized man!"
    end
    
    after_find do |record|
        puts "#{record.title} encontrado"
    end

    #Relations
    belongs_to  :author, counter_cache: :books_count
    has_many  :person_books
    has_many :people, through: :person_books

    #Validations
    validates :terms_of_service, 
        acceptance: {
            accept: true,
            message: 'Yo ass better accept this'}
    validates :number_of_pages,
        numericality: {
            greater_than_or_equal_to: 10,
            less_than: 2000, message: "Invalid value"}
    validates :title, 
        uniqueness: { case_sensitive: false },
        if: :number_of_pages_allowed?
    validates :desc, 
        length: {minimum: 25}, 
        allow_blank: true

    validate :authorized_author

    private

    def authorized_author
        if !self.author or (self.author and !self.author.authorized)
            self.errors.add(:author, "This author hasn't been approved")
        end
        
    end

    
    def number_of_pages_allowed?
        self.number_of_pages > 500 and self.number_of_pages  < 600
    end
    
    # def author_with_books
    #     if !self.author or (self.author and !self.author.books.any?)
    #         self.errors.add(:author, "You need to complete the administrative process to add an author")
    #     end
    # end


    # validates_each :title, :desc do |record, attr, value|
    #     record.errors.add(attr, "Not valid :(") if value.length > 1000 and value.scan(/\w*/)
    # end


    #validates_with DescValidator, fields: [:desc]
    #  class DescValidator < ActiveModel::Validator
    #      def validate(record)
    #        record.desc == "Hola que hace"
    #         if(...something)
    #             record.errro[:desc] << "This is a custom validator error"
    #         end
    #     end
    # end
    
end 
