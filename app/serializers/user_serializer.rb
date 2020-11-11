class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest
  
  has_many :user_tracklists
  has_many :tracklists, through: :user_tracklists
end
