class VolunteerInitiative < ApplicationRecord
  belongs_to :initiative
  belongs_to :user
  validates_uniqueness_of :user_id, scope: :initiative_id
end
