class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @store = @user.stores
  end
end
