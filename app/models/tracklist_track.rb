class TracklistTrack < ApplicationRecord
    belongs_to :tracklist
    belongs_to :track 
end
