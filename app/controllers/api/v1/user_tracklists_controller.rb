class Api::V1::UserTracklistsController < ApplicationController
    # skip_before_action :authorized
    def index
        @user_tracklists = UserTracklist.all
        render json: @user_tracklists
    end
end
