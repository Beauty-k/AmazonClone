class RegistrationsController < ApplicationController
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path,  notice: "Account created successfully"
        else
            render :new
        end
    end

    def render_menu
        render partial: "amazon_clone/menu"
    end

    private

    def user_params
        params.require(:user).permit(:Name, :email, :phone_number, :password, :password_confirmation)
    end
end
