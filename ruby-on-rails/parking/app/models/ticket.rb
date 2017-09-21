class Ticket < ApplicationRecord
    validates :plate, presence: true, format: {with: /\w{3}\d{3}/, message: "Format should be AAA000"}
end
