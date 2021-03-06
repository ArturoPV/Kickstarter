class User < ApplicationRecord
  validates :fname, :lname, :age, :email, :password, presence: true
  validates :email, uniqueness: true
  has_secure_password validations: false
  has_many :volunteer_initiatives
  has_many :joined_initiatives, through: :volunteer_initiatives, source: :initiative
  has_many :initiatives

  def has_joined?(initiative)
    initiative.volunteers.include?(self)
  end

end
