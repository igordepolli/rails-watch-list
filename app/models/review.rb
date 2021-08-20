class Review < ApplicationRecord
  belongs_to :list

  validates :content, presence: true
  validates :stars, inclusion: 0..5, numericality: { only_integer: true }
end
