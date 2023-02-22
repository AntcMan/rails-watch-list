class Bookmark < ApplicationRecord
  # ADD RELATIONSHIPS HERE
  belongs_to :movie
  belongs_to :list

  # ADD VALIDATIONS HERE
  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, presence: true, length: { minimum: 6 }
end
