class Reservation < ApplicationRecord
  validates :time, :email, :party_size, :date, presence: true
  validates :name, length: {maximum: 20}
end
