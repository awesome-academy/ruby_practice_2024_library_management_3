class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email, null: false
      t.string :password_digest
      t.string :role, default: 0, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
