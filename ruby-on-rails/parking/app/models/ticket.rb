class Ticket < ApplicationRecord
    validates :plate, presence: true, format: {with: /\A\w{3}[0-9]{3}\z/, message: "Format should be AAA000"}
end
