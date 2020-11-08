class Api::V1::TracklistTracksController < ApplicationController
    skip_before_action :authorized
    def index
        @tracklist_tracks = TracklistTrack.all
        render json: @tracklist_tracks
    end
end
