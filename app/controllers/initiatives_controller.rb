class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end
  def new
    @initiative = Initiative.new
  end
  def create
    initiative = Initiative.new(params.require(:initiative).permit(:name, :description, :deadline))
    initiative.save
    redirect_to initiatives_path
  end
  def show
    @initiative = Initiative.find(params[:id])
  end
end
