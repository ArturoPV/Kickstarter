class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end

  def new
    @initiative = Initiative.new
  end

  def create
    @initiative = current_user.initiatives.build(initiative_params)

    if @initiative.save
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
    @initiative = Initiative.find(params[:id])

    if @initiative.update(initiative_params)
      redirect_to initiative_path
    else
      render 'edit'
    end
  end

  private

  def initiative_params
    params.require(:initiative).permit(:name, :description, :deadline)
  end
end
