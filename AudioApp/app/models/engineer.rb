class Engineer < ApplicationRecord
  has_many :bookings
  has_many :artists, :through => :bookings
end
