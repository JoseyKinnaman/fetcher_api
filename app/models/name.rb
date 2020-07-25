class Name < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :comment, presence: true
end