class Api::V1::UserTracklistsController < ApplicationController

    def index
        @user_tracklists = UserTracklist.all
        render json: @user_tracklists
    end
end
