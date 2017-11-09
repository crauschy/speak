class Keyword < ApplicationRecord
  has_and_belongs_to_many :categories
  belongs_to :user, optional: true

  # validates :word, presence: true #do we want to limit length?

end
