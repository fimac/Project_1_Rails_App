class Booking < ApplicationRecord
  belongs_to :engineer
  belongs_to :artist
end
