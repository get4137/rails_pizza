# frozen_string_literal: true

class Pizza < ApplicationRecord
  validates :title, :description, :price, :size, :path_to_image, presence: true
  validates_inclusion_of :is_spicy, :is_veg, :best_offer, in: [true, false]
end
