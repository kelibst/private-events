class UsersController < ApplicationController
  before_action :set_user, only: [ :edit, :update, :show, :destroy]
  before_action :require_users, only: [:show]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
          session[:user_id] = @user.id
          format.html{redirect_to user_path(@user), notice: "#{@user.username} has successfully signed up"}
      else
          format.html {render :new}
      end
end
  end

  def show
  end
  private

  def set_user
      @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

  def require_users
    unless logged_in? 
      flash[:danger] = "You are required to be logged in to perform that action"
      redirect_to root_path
    end
  end
end
