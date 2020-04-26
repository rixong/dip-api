class Api::V1::ReservationsController < ApplicationController
  
  def index
    reservations = Reservation.all
    render json: reservations
  end

  def create
    # pry
    @reservation = Reservation.new(reservation_params)
    if @reservation.valid?
    @reservation.save
    render json: {res: ReservationSerializer.new(@reservation), message: 'Success'}
    else
      render json: { message: 'Failed to create reservation'}
    end
  end

  private
    
  def reservation_params
    params.require(:reservation).permit(:arrival, :departure, :pending, :cabin_id, :user_id, :annual_report_id)
  end

end
