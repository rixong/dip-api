class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservation.All
    render json: reservations
  end

end
