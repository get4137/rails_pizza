class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :new_url
      t.references :user, foreign_key: true
      t.timestamps
    end
    Url.create new_url: 'https://www.facebook.com/'
  end
end
