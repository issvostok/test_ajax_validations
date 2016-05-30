class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to main_path
    else
      render :new
    end
  end

  def validate
    user = User.new(user_params)
    user.valid?
    field = params[:user].first[0]
    @errors = user.errors[field]

    if @errors.empty?
      @errors = true
    else
      @errors
    end

    respond_to do |format|
      format.json { render json: @errors }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
