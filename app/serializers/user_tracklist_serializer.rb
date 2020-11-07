class UserTracklistSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tracklist_id
end
