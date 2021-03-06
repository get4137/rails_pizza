# frozen_string_literal: true

class AddNickname < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string
    add_index :users, :nickname, unique: true
  end
end
