class Difficulty < ApplicationRecord
  has_many :algorithms
  validates :name, presence: true
end
