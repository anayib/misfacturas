class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.integer :quantity
      t.float :total
      t.references :invoice, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
