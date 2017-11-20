require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:reservation) { Reservation.new(name: "Belinda", email: "belinda@hotmail.com", party_size: 4, date: "4/17/2017", time: "7:30pm") }

  describe "validations" do
    it 'is invalid without a name' do
      reservation.name = nil
      expect(reservation).to be_invalid
    end

    it 'is invalid without an email' do
      reservation.email = nil
      expect(reservation).to be_invalid
    end

    it 'is invalid without a party size' do
        reservation.party_size = nil
        expect(reservation).to be_invalid
    end

    it 'is invalid without a date' do
      reservation.date = nil
      expect(reservation).to be_invalid
    end

    it 'is invalid without a time' do
      reservation.time
      expect(reservation).to be_invalid
    end
  end
end
