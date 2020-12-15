class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products, id: false do |t|
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
      
      t.timestamps
    end
  end
end
