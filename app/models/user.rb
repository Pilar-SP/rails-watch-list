class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend Devise::Models

  has_many :bookmarks, through: :lists
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
