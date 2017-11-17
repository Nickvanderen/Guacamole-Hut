class ReservationsController < ActionController::Base
  
  def new
    @reservation = Reservation.new
  end
end
