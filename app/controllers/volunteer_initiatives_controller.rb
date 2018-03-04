class VolunteerInitiativesController < ApplicationController
  def create
    volunteer = VolunteerInitiative.create(user_id: current_user.id, initiative_id: params[:initiative_id])

    initiative = Initiative.find(params[:initiative_id])
    initiative.increment!(:volunteersjoined, by = 1)

    redirect_to initiative_path(params[:initiative_id])
  end

  def destroy
    volunteer = VolunteerInitiative.find_by(user_id: current_user.id, initiative_id: params[:initiative_id])
    volunteer.destroy

    initiative = Initiative.find(params[:initiative_id])
    initiative.decrement!(:volunteersjoined, by = 1)

    redirect_to initiative_path(params[:initiative_id])
  end
end
