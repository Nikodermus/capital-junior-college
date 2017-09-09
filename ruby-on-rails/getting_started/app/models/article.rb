class Article < ApplicationRecord
    has_many :comments, inverse_of: :article, dependent: :destroy
    validates :title, length: { minimum: 5}    
end
