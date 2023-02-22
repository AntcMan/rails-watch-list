class List < ApplicationRecord
  # ADD RELATIONSHIPS HERE
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # ADD VALIDATIONS HERE
  validates :name, presence: true, uniqueness: true
end
