class RepairSerializer < ActiveModel::Serializer

  attributes :id, :category, :description, :pending, :followup, :created_at, :userId, :cabinId, :annualReport

  def userId
    userId = self.object.user_id
  end

  def cabinId
    cabinId = self.object.cabin_id
  end 

  def annualReport
    annualReport = self.object.annual_report_id
  end 


end
