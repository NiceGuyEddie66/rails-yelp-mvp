class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  has_many :reviews, dependent: :destroy
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
