class User < ApplicationRecord
    has_many :user_tracklists
    has_many :tracklists, through: :user_tracklists
    
    has_secure_password
    
end
