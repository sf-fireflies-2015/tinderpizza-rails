class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.string :name
      t.integer :price
      t.integer :diameter

      t.timestamps null: false
    end
  end
end
