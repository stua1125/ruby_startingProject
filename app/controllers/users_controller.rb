class UsersController < ApplicationController

  def create
    @creator = Creator.find(params[:creator_id])
    @user = @creator.users.create(users_params)
    redirect_to article_path(@creator)
  end

  private
  def users_params
    params.require(:user).permit(:name, :age)
  end

end

