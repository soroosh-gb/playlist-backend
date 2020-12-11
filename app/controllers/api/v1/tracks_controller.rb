class Api::V1::TracksController < ApplicationController
    skip_before_action :authorized


    def index
        @tracks = Track.all
        render json: @tracks
    end

    def show

    end


    def all
        s_tracks = RSpotify::Playlist.find("1276640268","2kpoUUJ5a4Cw3feTkFJhZ2").tracks
        @tracks = s_tracks.map do |s_track|
          Track.new_from_spotify_track(s_track)
        end
    render json: @tracks
    end

    def create
        # byebug
        track = Track.create(track_params)

        render json: track
    end

    def destroy
        track = Track.find(params[:id])
        track.destroy
        render json: track

    end


    # def random
    #     s_tracks = RSpotify::Playlist.browse_featured.first.tracks
    #     @tracks = s_tracks.map do |s_track|
    #       Track.new_from_spotify_track(s_track)
    #     end
    # render json: @tracks
    # end

   

    # def search
    #     s_tracks = RSpotify::Track.search(params[:q])
    #     @tracks = s_tracks.map do |s_track|
    #       Track.new_from_spotify_track(s_track)
    #     end
    # render json: @tracks
    # end

    private
    def track_params
        params.require(:track).permit!
    end
end
