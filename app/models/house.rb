class House < ApplicationRecord
  has_many :distances
  accepts_nested_attributes_for :distances, reject_if: :all_blank
end
