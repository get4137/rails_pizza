class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.decimal :size
      t.boolean :is_spicy
      t.boolean :is_veg
      t.boolean :best_offer
      t.string :path_to_image
      t.timestamps
    end
    Pizza.create :title => 'hawaiian', :description => 'chicken, pineapple', :price => 8, :size => 30, :is_spicy => false, :is_veg => false, :best_offer => false, :path_to_image => '/images/hawaiian.jpeg'
    Pizza.create :title => 'peperoni', :description => 'sausage, pepper', :price => 7, :size => 30, :is_spicy => true, :is_veg => false, :best_offer => true, :path_to_image => '/images/peperoni.jpg'
    Pizza.create :title => '4 cheese', :description => 'cheese', :price => 9, :size => 30, :is_spicy => false, :is_veg => true, :best_offer => false, :path_to_image => '/images/4cheese.jpg'
  end
end
