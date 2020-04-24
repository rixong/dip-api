class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :departure, :arrival, :reserver

  def reserver
    {firstname: self.object.user.firstname,
      lastname: self.object.user.lastname,
      email: self.object.user.email,
      # reserverName: `#{self.object.user.firstname} #{self.object.user.lastname}`
    }
  end

end
