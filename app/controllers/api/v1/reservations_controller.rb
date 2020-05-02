class Api::V1::ReservationsController < ApplicationController
  
  def index
    reservations = Reservation.all
    render json: reservations
  end

  def update
    # pry
    reservation = Reservation.find_by(id: params[:id])
    reservation.update(reservation_params)
    render json: {message: 'success'}
  end

  def create
    # pry
    @reservation = Reservation.new(reservation_params)
    @reservation.annual_report_id = 1
    @reservation.pending = true
    if @reservation.valid?
    @reservation.save
    render json: {res: ReservationSerializer.new(@reservation), message: 'success'}
    else
      render json: { message: 'Failed to create reservation'}
    end
  end

  private
    
  def reservation_params
    params.require(:reservation).permit(:arrival, :departure, :pending, :cabin_id, :user_id, :annual_report_id)
  end

end
