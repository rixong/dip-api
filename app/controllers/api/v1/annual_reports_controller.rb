class Api::V1::AnnualReportsController < ApplicationController

  def current
    report = AnnualReport.find_by(current: true)
    users = User.all
    cabins = Cabin.all
    reservations = Reservation.all
    repairs = Repair.all
    render json: {report: report, 
                  users: users, 
                  cabins: cabins, 
                  reservations: reservations,
                  repairs: repairs}
  end
  

end
