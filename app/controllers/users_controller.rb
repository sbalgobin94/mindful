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
          redirect_to profile_path
        else
          flash[:error] = "Incorrect username or password"
          redirect_to login_path
        end
      end

      def logout
        session[:student_id] = nil
        redirect_to login_path
      end

      def profile
        render :profile
      end

      def new
        @errors = flash[:errors]
        @user = User.new
      end

      def create
        user_params = params.require(:user).permit(:name, :username, :password)
        @user = User.create(user_params)

        if @user.valid?
          session[:user_id] = @user.id
          redirect_to login_path
        else
          flash[:errors] = @user.errors.full_messages
          redirect_to new_user_path
      end
    end



end
