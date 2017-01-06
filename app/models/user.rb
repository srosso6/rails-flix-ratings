class User < ApplicationRecord

  before_save { self.email_address.downcase! }
  has_many :votes
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, presence: true, length: { maximum: 50 }, uniqueness: true
  validates :email_address, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6, maximum: 12 }
end


# note: need to update REGEX so it doesn't allow double dot e.g. foo@bar..com
# add more validations on password e.g. must contain at least one number or symbol?
