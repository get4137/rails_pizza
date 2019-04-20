class Url < ApplicationRecord
  validates :old_url, :new_url, presence: true
end
