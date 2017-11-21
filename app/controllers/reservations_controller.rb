class ReservationsController < ApplicationController

  def index
    render 'index'
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    render 'show'
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.udpate(params[:reservation]).permit(:name, :email, :party_size, :date, :time)
      redirect_to @reservation
    else
      render 'edit'
    end
  end

  private
    def reservation_params
      params.require(:reservation).permit(:name, :email, :party_size, :date, :time)
    end
end
