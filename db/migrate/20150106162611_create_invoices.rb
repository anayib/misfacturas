class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :serial
      t.date :date
      t.float :total
      t.references :user, index: true
      t.references :shop, index: true

      t.timestamps
    end
  end
end
