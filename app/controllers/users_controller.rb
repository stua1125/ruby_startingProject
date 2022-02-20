class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)

    if @user.save
      redirect_to @user
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # @creuser = CreatorsUsers.find(params[:id])
    @creuser = CreatorsUsers.where(user_id:params[:id])
    @creuser.destroy

    redirect_to :root, status: :see_other
  end

  private
  def users_params
    params.require(:user).permit(:name, :age)
  end

end

