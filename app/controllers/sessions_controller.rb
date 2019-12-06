class SessionsController < ApplicationController
    def new
    end

    def create
        binding.pry
        @user = User.find_by(params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def destroy
        session.clear
        redirect_to '/'
    end
end