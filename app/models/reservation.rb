class Reservation < ApplicationRecord
  validates :email, :party_size, :date, presence: true
  validates :name, length: {maximum: 20}
end
