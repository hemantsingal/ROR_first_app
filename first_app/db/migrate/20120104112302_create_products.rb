class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :image
      t.float :price
      t.integer :availability

      t.timestamps
    end
  end
end
