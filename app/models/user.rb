class User < ApplicationRecord
  extend FriendlyId
  friendly_id :username, use: :slugged
  has_many :photos
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  followability

  def unfollow(user)
    followerable_relationships.where(followable_id: user.id).destroy_all
  end
end
