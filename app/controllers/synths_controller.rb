class SynthsController < ApplicationController
    def index
        @synths = Synth.all
        render json: @synths, except: [:created_at, :updated_at]
    end
    def new
        @synth = Synth.new
        render json: @synth, except: [:created_at, :updated_at]
    end
    def create
        @synth = Synth.create(synth_strong_params)
        render json: @synth, except: [:created_at, :updated_at]
    end
    def show
        @synth = Synth.find_by(id: params[:id])
        render json: @synth, except: [:created_at, :updated_at]
    end
    private
    def synth_strong_params
        params.require(:synth).permit(:kind, :sequence_id)
    end
end
