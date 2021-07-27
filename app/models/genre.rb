class Genre < ApplicationRecord
  has_many :posts,dependent: :destroy

  validates :genre_name, presence: true
end
