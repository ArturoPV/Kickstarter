class VolunteerInitiativesController < ApplicationController
  def create
    binding.pry
    volunteer = Volunteer.new(user_id:  current_user.id, initiative_id:  @initiative.id)
    volunteer.save

  end
end
