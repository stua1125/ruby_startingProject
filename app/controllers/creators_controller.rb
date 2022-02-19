class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
  end

  def show
    @cre = Creator.find(params[:id])
  end

  def new
    @creator = Creator.new
  end

  def create
    @creator = Creator.new(creator_params)

    if @creator.save
      redirect_to @creator
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def creator_params
    params.require(:creator).permit(:channel, :contents)
  end

end
