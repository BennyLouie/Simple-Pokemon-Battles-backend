class CapturesController < ApplicationController

    def index
        allCaptures = Capture.all 
        render json: allCaptures
    end

    def show
        render json: set_capture
    end

    def create
        capture = Capture.create(capture_params)
        # byebug
        user = User.find(capture_params[:user_id])
        if user.valid?
            render json: capture
        else
            capture.destroy
            render json: { errors: "Your team is full. Release a pokemon to add a new one." }, status: :unprocessable_entity
        end
    end

    def destroy
        byebug
        set_capture.destroy
        set_capture.pokemon.destroy
        render json: set_capture
    end

    private

    def set_capture
        Capture.find_by(id: params[:id])
    end

    def capture_params
        params.permit(:user_id, :pokemon_id)
    end
end
