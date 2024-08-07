class CreateBorrowRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :borrow_requests do |t|
      t.date :request_date
      t.date :start_date
      t.date :end_date
      t.integer :status, default: 0, null: false
      t.string :rejection_reason
      t.decimal :price, precision: 10, scale: 2
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
