class TracklistSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  
    has_many :tracklist_tracks
    has_many :tracks, through: :tracklist_tracks
    has_many :user_tracklists
    has_many :users, through: :user_tracklists
end
