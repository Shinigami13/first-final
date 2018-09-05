class UsersController < ApplicationController
  # before_action :find_user, only: %i[show edit update destroy]

  def index
    # @user = User.new
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    # puts "I am in /users/id route"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user.save
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

end
