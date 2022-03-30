class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :phone_num
      t.datetime :remember_created_at

      t.timestamps
    end
    add_index :users, :email,                unique: true
  end
end
