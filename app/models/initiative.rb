class Initiative < ApplicationRecord
  validates :name, :description, :volunteersjoined, :progress, presence: true
  has_many :volunteer_initiatives
  has_many :volunteers, through: :volunteer_initiatives, source: :user
end
