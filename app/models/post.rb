class Post < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  validates :comment, presence: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 500 }
end
