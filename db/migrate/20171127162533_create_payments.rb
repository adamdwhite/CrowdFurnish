class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :payment_type
      t.integer :account_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
