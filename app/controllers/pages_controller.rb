class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:user]

  def home
  end

  def user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
