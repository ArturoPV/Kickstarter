class User < ApplicationRecord
  validates :fname, :lname, :age, :email, :password_digest, presence: true
  validates :email, uniqueness: true
  has_secure_password validations: false
end
