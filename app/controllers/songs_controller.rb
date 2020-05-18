class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs, except: [:created_at, :updated_at]
    end
    def new
        @song = Song.new
        render json: @song, except: [:created_at, :updated_at]
    end
    def create
        @song = Song.create(song_strong_params)
        render json: @song, except: [:created_at, :updated_at]
    end
    def show
        @song = song.find_by(id: params[:id])
        render json: @song, except: [:created_at, :updated_at]
    end
    private
    def song_strong_params
    params.require(:song).permit(:name,:user_id)
    end
end

