class Category < ApplicationRecord
  has_and_belongs_to_many :keywords
  belongs_to :user, optional: true

  validates :name, presence: true

  scope :programmed, -> { where(user_id: nil) }
  # User.find_by(id:session['user_id']).categories
  # scope :of_current_user, -> { where(user_id: session[:user_id]) }

end
