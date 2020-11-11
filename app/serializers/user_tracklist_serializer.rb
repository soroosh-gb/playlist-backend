class UserTracklistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tracklist_id

  belongs_to :user
  belongs_to :tracklist
end
