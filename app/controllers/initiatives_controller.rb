class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end

  def new
    @initiative = Initiative.new
  end

  def create
    binding.pry 
    initiative = Initiative.new(params.require(:initiative).permit(:name, :description, :deadline, :user_id)) do
      user_id = current_user.id

    end
    if initiative.save
      redirect_to initiatives_path
    else
      render 'new'
    end
  end

  def show
    @initiative = Initiative.find(params[:id])
  end

  def edit
    @initiative = Initiative.find(params[:id])
  end

  def update
    initiative = Initiative.find(params[:id])
    if initiative.update(params.require(:initiative).permit(:name, :description, :deadline))
      redirect_to initiative_path
    else
      render 'edit'
    end

  end
end
