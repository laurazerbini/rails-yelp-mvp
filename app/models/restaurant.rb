class Restaurant < ApplicationRecord

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }

end
