class Algorithm < ApplicationRecord
  belongs_to :category
  belongs_to :difficulty_level
  has_many :solutions
end
