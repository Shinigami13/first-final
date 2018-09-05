class UsersController < ApplicationController
  # before_action :find_user, only: %i[show edit update destroy]

  def index
    # @user = User.new
    @user = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to '/users'
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
  end

private
def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
def find_user
  @user = User.find(params[:id])
end
end
