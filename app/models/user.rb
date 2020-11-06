class User < ApplicationRecord
    has_many :tracklists
    has_many :tracks, through: :tracklists
end
