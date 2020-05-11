class Api::V1::RepairsController < ApplicationController

  def update
    # pry
    repair = Repair.find_by(id: params[:id])
    repair.update(repair_params)
    render json: {message: 'success'}
  end

  def create
    repair = Repair.new(repair_params)
    repair.annual_report_id = 1
    repair.submission_date = Time.new
    repair.pending = true
    # repair.save
    if repair.save
      render json: {repair: RepairSerializer.new(repair), message: 'Repair created'}
    else
      render json: {message: 'Something went wrong'}
    end
  end

  def index
    repairs = Repair.all
    render json: repairs
  end

  private

    def repair_params
      params.require(:repair).permit(:user_id, :cabin_id, :category, :description, :priority, :submission_date, :followup, :pending, :annual_report_id)
    end

end
