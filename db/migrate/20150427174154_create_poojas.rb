class CreatePoojas < ActiveRecord::Migration
  def change
    create_table :poojas do |t|
      t.string :name
      t.string :idol
      t.text :description
      t.integer :price
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
