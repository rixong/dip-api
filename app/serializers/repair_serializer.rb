class RepairSerializer < ActiveModel::Serializer

  attributes :id, :category, :description, :pending, :followup, :created_at, :userId, :cabinId

  def userId
    userId = self.object.user_id
  end

  def cabinId
    cabinId = self.object.cabin_id
  end 


end
