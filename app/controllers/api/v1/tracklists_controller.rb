class Api::V1::TracklistsController < ApplicationController
    skip_before_action :authorized

    def index
        @tracklists = Tracklist.all
        render json: @tracklists
    end

end
