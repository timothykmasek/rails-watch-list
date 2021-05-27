class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :comment, presence: true
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list }
end
