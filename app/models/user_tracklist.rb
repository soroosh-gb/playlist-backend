class UserTracklist < ApplicationRecord
    belongs_to :user
    belongs_to :tracklist 
end
