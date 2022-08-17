class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # belongs_to :user
  validates :movie, uniqueness: {scope: :list,
  message: "pair movie/list should have a unique name"}
  validates :comment, length: { minimum: 6 }
  validates :comment, length: { maximum: 50 }
end
