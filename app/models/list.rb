class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: { scope: :user }
  has_one_attached :photo
  belongs_to :user
end
