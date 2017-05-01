class User < ApplicationRecord
  has_secure_password

  has_many :artists
  has_many :engineers
end
