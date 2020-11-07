class Api::V1::TracklistsController < ApplicationController


    def index
        @tracklists = Tracklist.all
        render json: @tracklists
    end

end
