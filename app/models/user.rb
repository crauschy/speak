class User < ApplicationRecord
  has_many :keywords, optional: true
  has_many :phrases

  # validates :name, presence: true
  # before_save { self.email = email.downcase }
  # validates :username, presence: true, length: { maximum: 50 }, uniqueness: true

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #   format: { with: VALID_EMAIL_REGEX },
  #   uniqueness: { case_sensitive: false }

  # has_secure_password

end
