class ReservationSerializer < ActiveModel::Serializer
  
  attributes :id, :departure, :arrival, :reserver, :cabin

  def reserver
    {firstname: self.object.user.firstname,
      lastname: self.object.user.lastname,
      email: self.object.user.email,
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
