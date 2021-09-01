class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :status, :profile_pic
  has_many :recipes
end
