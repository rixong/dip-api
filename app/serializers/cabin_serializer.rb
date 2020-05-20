class CabinSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :owner
end
