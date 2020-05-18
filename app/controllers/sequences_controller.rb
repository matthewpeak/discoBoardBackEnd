class SequencesController < ApplicationController
    def index
        @sequences = Sequence.all
        render json: @sequences, except: [:created_at, :updated_at]
    end
    def new
        @sequence = Sequence.new
        render json: @sequence, except: [:created_at, :updated_at]
    end
    def create
        @sequence = Sequence.create(sequence_strong_params)
        render json: @sequence, except: [:created_at, :updated_at]
    end
    def show
        @sequence = Sequence.find_by(id: params[:id])
        render json: @sequence, except: [:created_at, :updated_at]
    end
    private
    def sequence_strong_params
        params.require(:sequence).permit(:song_id,:order,:tone, :note1, :note2, :note3, :note4, :note5, :note6, :note7, :note8)
    end
end
