class UsersController < ApplicationController
  def new
    @user = User.new
    render
  end

  def create
    @user = User.new(email_params)
    if @user.save
      redirect_to user_url
    else
      render :new
    end
  end

  private

  def email_params
    params.require([:fist_name, :last_name, :email, :password]).permit(:fist_name, :last_name, :email, :password)
  end
end
