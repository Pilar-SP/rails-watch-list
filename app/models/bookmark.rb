class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: {scope: :list,
  message: "pair movie/list should have a unique name"}
  validates :comment, length: { minimum: 6 }
end
