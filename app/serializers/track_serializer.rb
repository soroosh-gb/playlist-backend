class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :preview, :artist, :spotify_id
end
