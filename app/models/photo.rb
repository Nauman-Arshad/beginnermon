class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image


  def image_as_thumbnail
    image.variant(resize_to_limit:[450,450])&.processed
  end

  def image_as_show
    image.variant(resize_to_limit:[650,650])&.processed
  end
end
