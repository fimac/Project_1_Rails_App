class Artist < ApplicationRecord
  has_many :bookings
  has_many :engineers, :through => :bookings

end
