class CreateBorrowHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :borrow_histories do |t|
      t.date :borrow_date
      t.date :return_date
      t.integer :status, default: 0, null: false
      t.decimal :price, precision: 10, scale: 2
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.timestamps
    end
  end
end
