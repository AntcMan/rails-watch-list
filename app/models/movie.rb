class Movie < ApplicationRecord
  # ADD RELATIONSHIPS HERE
  has_many :bookmarks

  # ADD VALIDATIONS HERE
  validates :title, :overview, presence: true
end
