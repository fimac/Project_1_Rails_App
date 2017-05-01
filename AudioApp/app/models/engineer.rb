class Engineer < ApplicationRecord
  has_many :bookings
  has_many :artists, :through => :bookings

  belongs_to :user, optional: true
end
