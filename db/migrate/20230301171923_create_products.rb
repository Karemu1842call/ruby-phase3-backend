class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :productName
      t.integer :price
      t.string :productImage
    end
  end
end
