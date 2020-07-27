class Name < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :comment, presence: true
  scope :search, -> (category_parameter) { where("category ilike ?", "%#{category_parameter}%")}
end