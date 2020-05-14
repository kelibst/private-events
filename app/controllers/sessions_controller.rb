class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.email == params[:session][:email]
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in."
            redirect_to user_path(user)
        else
            flash.now[:danger] = "Login information is invalid"
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = "You have logged out!"
        redirect_to root_path
    end
end
