class Comment < ApplicationRecord
  belongs_to :article, inverse_of: :comments
  validates :body, :commenter , presence: true 
end
