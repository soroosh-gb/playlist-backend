class User < ApplicationRecord
    has_secure_password
    has_many :user_tracklists
    has_many :tracklists, through: :user_tracklists

end
