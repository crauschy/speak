class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username]) || User.new(username:"whatever", password:"whatever")
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # @user.invalid_login
      @login_errors = "Please enter a valid username and password."
      render partial: "modals/login_errors"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end



end