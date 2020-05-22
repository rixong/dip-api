class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :firstname, :lastname, 
    :bday, :admin, :photo_url, :address1, 
    :address2, :city, :state, :zip, :phone
end
