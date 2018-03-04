class Initiative < ApplicationRecord
  belongs_to :user
  validates :name, :description, :volunteersjoined, :progress, :user_id, presence:  true
  has_many :volunteer_initiatives
  has_many :volunteers, through: :volunteer_initiatives, source: :user

  def has_volunteers?
    volunteersjoined != 0
  end
end
