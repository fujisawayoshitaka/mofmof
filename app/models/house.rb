class House < ApplicationRecord
  has_many :distances
  accepts_nested_attributes_for :distances
  # validates :distances, uniqueness: true
end
