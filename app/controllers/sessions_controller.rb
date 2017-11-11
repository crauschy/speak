class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by username: params[:username] || User.new

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @user.invalid_login
      flash[:danger] = "Invalid username or password"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  # def keys
  #   render json: {AWS_ACCESS_KEY_ID: ENV["AWS_accessKeyID"], AWS_SECRET_ACCESS_KEY: ENV["AWS_secretAccessKey"]}
  # end


end