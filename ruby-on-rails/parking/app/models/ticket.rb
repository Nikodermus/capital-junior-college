class Ticket < ApplicationRecord
    #belongs_to :vehicle_types
    validates :plate, presence: true, format: {with: /\A\w{3}[0-9]{3}\z/, message: "Format should be AAA000"}
end
