require 'pry'

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_current_user

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def show
    @message = params[:message] if params[:message]
    @message ||= false
    if !@current_user
      redirect_to '/'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height, :admin)
  end

  def set_user
    @user = User.find(params[:id])
  end


end
