class Category < ApplicationRecord
  has_and_belongs_to_many :keywords

  # validates :name, presence: true

end
