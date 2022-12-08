class CommentsController < ApplicationController
  before_action :set_photo

  def create
    @photo.comments.create! params.required(:comment).permit(:content)
    redirect_to @photo
  end

  private

  def set_photo
    @photo = Photo.find(params[:photo_id])
  end
end
