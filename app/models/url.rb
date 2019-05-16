class Url < ApplicationRecord
  belongs_to :user
  validates :new_url, presence: true
end