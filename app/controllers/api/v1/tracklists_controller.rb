class Api::V1::TracklistsController < ApplicationController
    # skip_before_action :authorized

    def index
        @tracklists = Tracklist.all
        render json: @tracklists
    end

    def show

    end

    def create
        tracklist = Tracklist.create(tracklist_params)

        render json: tracklist
    end



    private
    def tracklist_params 
        params.require(:tracklist).permit! 
    end

end
