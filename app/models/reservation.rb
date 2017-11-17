class Reservation < ApplicationRecord
  validates :email, :party_size, :date, presence: true
  validates :name, length: {maximum: 25}
end
