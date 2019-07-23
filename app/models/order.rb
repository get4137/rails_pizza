# frozen_string_literal: true

class Order < ApplicationRecord
  validates :title, :price, :name, :email, :phone, presence: true
end
