class Initiative < ApplicationRecord
  validates :name, :description, :volunteersjoined, :progress, presence: true
end
