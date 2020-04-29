class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, :bday, :admin
end
