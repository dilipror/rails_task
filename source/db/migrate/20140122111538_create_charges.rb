class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.integer :customer_id
      t.boolean :paid
      t.decimal :amount
      t.string :currency
      t.boolean :refunded

      t.timestamps
    end
  end
end
