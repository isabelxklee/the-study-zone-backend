class Category < ApplicationRecord
  has_many :algorithms
  validates :title, presence: true
end
