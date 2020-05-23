class Api::V1::ReservationsController < ApplicationController
  
  def index
    reservations = AnnualReport.find_by(current: true).reservations
    render json: reservations
  end

  def destroy
    reservation = Reservation.find_by(id: params[:id])
    reservation.delete()
  end

  def update
    # pry
    reservation = Reservation.find_by(id: params[:id])
    reservation.update(reservation_params)
    render json: {message: 'success'}
  end

  def create
    # 
    @reservation = Reservation.new(reservation_params)
    # currentReport = AnnualReport.find_by(current: true)
    #pry
    @reservation.annual_report_id = AnnualReport.find_by(current: true).id
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
