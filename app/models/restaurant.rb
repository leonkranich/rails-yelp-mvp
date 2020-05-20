class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # def self.categories_array
  #   ["chinese", "italian", "japanese", "french", "belgian"]
  # end
  validates :name, presence: true
  validates :address, presence: true
  #validates :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end
