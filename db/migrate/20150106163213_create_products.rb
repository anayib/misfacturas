class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :provider
      t.float :price
      t.string :image_url

      t.timestamps
    end
  end
end
