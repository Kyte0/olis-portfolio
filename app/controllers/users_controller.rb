class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  @user.update(params[:user])
    # Will raise ActiveModel::ForbiddenAttributesError
  end
end
