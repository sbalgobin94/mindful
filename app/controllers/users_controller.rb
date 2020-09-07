class UsersController < ApplicationController
    skip_before_action :authorized_to_see_page, only: [:login, :handle_login, :new, :create]

    def show
        @user = User.find(params[:id])
    end

    def login
        @error = flash[:error]
    end

    def handle_login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          # If the student is found AND their password matches
          session[:user_id] = @user.id
          redirect_to user_path(@user)
        else
          flash[:error] = "Incorrect username or password"
          redirect_to login_path
        end
      end
end
