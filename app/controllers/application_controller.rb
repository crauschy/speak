class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # before_action :set_user

  # private

  # def set_user
  #   cookies[:user_id] = User.find_by(id: session[:user_id]).gender || 'guest'
  # end

end
