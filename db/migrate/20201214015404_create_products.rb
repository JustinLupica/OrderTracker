class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :category
      t.string :size
      t.string :flavor
      t.integer :current_quantity
      t.boolean :reorder
      t.timestamps
    end
  end
end
