class Api::V1::TracklistTracksController < ApplicationController

    def index
        @tracklist_tracks = TracklistTrack.all
        render json: @tracklist_tracks
    end
end
