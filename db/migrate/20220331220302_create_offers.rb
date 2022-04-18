class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :offer_id, index: true
      t.string :brand
      t.string :model
      t.integer :year
      t.string :engine_type
      t.string :drive_unit
      t.string :transmission
      t.integer :engine_capacity
      t.string :color
      t.text :condition
      t.integer :price
      t.text :contacts

      t.timestamps
    end
  end
end
