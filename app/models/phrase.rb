class Phrase < ApplicationRecord
  belongs_to: user

  validates :sentence, presence: true, uniqueness: true
  validates :user_id, presence: true
end
