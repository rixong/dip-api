class Api::V1::AnnualReportsController < ApplicationController

  def current
    report = AnnualReport.find_by(current: true)
    render json: {report: AnnualReportSerializer.new(report), message: 'success'}
  end
  

end
