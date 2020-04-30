class CabinSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :multiplier
end
