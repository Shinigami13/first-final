class UsersController < ApplicationController
  # before_action :find_user, only: %i[show edit update destroy]

  def index
    # @user = User.new
    @user = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.save
end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to '/users'
  end
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
