class UsersController < ApplicationController

    def index 
        allUsers = User.all
        render json: allUsers
    end

    def show
        # byebug
        render json: set_user
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: user
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        # byebug
        set_user.update(user_params)
        if set_user.valid?
            render json: set_user
        else
            render json: { errors: set_user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:id, :user, :first_name, :last_name, :username, :password, :wins, :losses)
    end

    def set_user
        User.find_by(id: params[:id])
    end
end
