class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :old_url
      t.string :new_url
      t.timestamps
    end
    Url.create :old_url => 'www.facebook.com', :new_url => 'www.fb.com'
  end
end
