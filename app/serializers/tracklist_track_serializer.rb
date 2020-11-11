class TracklistTrackSerializer < ActiveModel::Serializer
  attributes :id, :tracklist_id, :track_id

  belongs_to :tracklist
  belongs_to :track 
end
