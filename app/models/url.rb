# frozen_string_literal: true

class Url < ApplicationRecord
  belongs_to :user
  validates :new_url, presence: true
end
