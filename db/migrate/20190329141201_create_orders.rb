class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :price
      t.string :name
      t.string :email
      t.string :phone
      t.timestamps
    end
    Order.create :title => 'hawaiian', :price => 8, :name => 'Vasya', :email => 'vasya@gmail.com', :phone => '063 33 333 333'
    Order.create :title => 'peperoni', :price => 7, :name => 'Petya', :email => 'petya@gmail.com', :phone => '067 77 777 777'
    Order.create :title => '4 cheese', :price => 9, :name => 'Olya', :email => 'olya@gmail.com', :phone => '066 66 666 666'
  end
end
