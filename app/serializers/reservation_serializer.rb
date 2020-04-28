class ReservationSerializer < ActiveModel::Serializer
  
  attributes :id, :departure, :arrival, :reserver, :cabin

  def reserver
    {firstName: self.object.user.firstname,
      lastName: self.object.user.lastname,
      email: self.object.user.email,
      userId: self.object.user.id
      # reserverName: `#{self.object.user.firstname} #{self.object.user.lastname}`
    }
  end

  def cabin
    {cabinName: self.object.cabin.name,
      cabinId: self.object.cabin.id,
      cabinMultiplier: self.object.cabin.multiplier,
    }
  end

end
