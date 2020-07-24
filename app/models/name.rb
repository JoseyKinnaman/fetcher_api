class Name < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :male, presence: true
  validates :female, presence: true
  validates :comment, presence: true
end