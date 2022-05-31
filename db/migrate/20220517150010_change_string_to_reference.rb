class ChangeStringToReference < ActiveRecord::Migration[7.0]
  def up
    remove_column :offers, :brand
    remove_column :offers, :model
    add_reference :offers, :brand, index: true
    add_reference :offers, :model, index: true
  end

  def down
    remove_reference :offers, :brand, index: true
    remove_reference :offers, :model, index: true
    add_column :offers, :brand, :string
    add_column :offers, :model, :string
  end
end
