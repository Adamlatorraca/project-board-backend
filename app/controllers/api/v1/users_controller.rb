class UsersController < ApplicationController

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user), status: :created
        else
            resp = {
                error: @user.errors.full_message.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
