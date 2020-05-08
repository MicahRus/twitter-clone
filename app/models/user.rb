class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets, dependent: :destroy
  has_many :likes, through: :tweets, dependent: :destroy

  has_many :followers, class_name: 'Relationship', foreign_key: 'user_id'
  has_many :following, class_name: 'Relationship', foreign_key: 'follower_id'
end
