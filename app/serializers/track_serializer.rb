class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :preview, :artist, :spotify_id

  has_many :tracklist_tracks
  has_many :tracklists, through: :tracklist_tracks
end
