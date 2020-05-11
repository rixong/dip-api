class AnnualReportSerializer < ActiveModel::Serializer
  attributes :id, :year, :budget, :duesSplit

  def duesSplit
    duesSplit = self.object.dues_split
  end
  # , :reservations, :repairs

  # def reservations
  #   self.object.reservations.map do |reservation|
  #     {
  #       id: reservation.id,
  #       departure: reservation.departure,
  #       arrival: reservation.arrival,
  #       pending: reservation.pending,
  #       submissionDate: reservation.created_at,
  #       userId: reservation.user_id,
  #       cabinId: reservation.cabin_id
  #     }
  #   end
  # end

  # def repairs
  #   self.object.repairs.map do |repair|
  #     {
  #       category: repair.category,
  #       description: repair.description,
  #       priority: repair.priority,
  #       pending: repair.pending,
  #       followup: repair.followup,
  #       submissionDate: repair.created_at,
  #       user_id: repair.user_id,
  #       cabinId: repair.cabin_id
  #     }
  #   end
  # end

end
