class User < ActiveRecord::Base
  has_many :followed_relationships, foreign_key: :follower_id, class_name: "Relationship"
  has_many :following_relationships, foreign_key: :followed_id, class_name: "Relationship"

  has_many :followers,
  through: :followed_relationships,
  source: :follower

  has_many :followed_users,
  through: :following_relationships,
  source: :followed_users
end
