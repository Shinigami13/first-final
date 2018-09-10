class UsersController < ApplicationController
  # before_action :find_user, only: %i[show edit update destroy]

  def index
    # @user = User.all.order("created_at DESC")
    # @user = User.all.order("created_at ASC")
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
    #root_path
  end
end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    # @user = User.new(user_params)
    if @user.update_attributes(user_params)
    redirect_to '/users'
  else
    render 'edit'
  end
  end

  def destroy
  @user = User.destroy(params[:id])
  redirect_to '/users'
end

  private
  def user_params
      params.require(:user).permit(:first_name, :last_name)
  end

end
