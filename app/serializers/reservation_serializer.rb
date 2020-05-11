class ReservationSerializer < ActiveModel::Serializer
  
  # userId = object.user_id,
  attributes :id, :departure, :arrival, :pending, :created_at, :userId, :cabinId

  def userId
    userId = self.object.user_id
  end

  def cabinId
    cabinId = self.object.cabin_id
  end 

end
