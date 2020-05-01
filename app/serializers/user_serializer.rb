class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, :bday, :admin, :photo_url
end
