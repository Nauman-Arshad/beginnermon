class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
