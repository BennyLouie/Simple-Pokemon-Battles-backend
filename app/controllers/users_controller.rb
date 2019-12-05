class UsersController < ApplicationController

    def index 
        allUsers = User.all
        render json: allUsers
    end

    def show
        render json: set_user
    end

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: user
        elsif params[:password] == ""
            errors_msgs = user.errors.full_messages.push("Password can't be blank")
            render json: { errors: errors_msgs }, status: :unprocessable_entity
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        set_user.update(user_params)
        if set_user.valid?
            render json: set_user
        else
            render json: { errors: set_user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        set_user.destroy
        render json: ["Your account has been deleted"]
    end

    private

    def user_params
        params.permit(:id, :user, :first_name, :last_name, :username, :password, :wins, :losses)
    end

    def set_user
        User.find_by(id: params[:id])
    end
end
