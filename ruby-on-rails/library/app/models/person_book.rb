class PersonBook < ApplicationRecord
  belongs_to :person

  #With differente reference name
  #belongs_to :persona, class_name "Author", foreign_key: "author_id"
  belongs_to :book
end
